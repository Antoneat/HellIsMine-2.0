using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorController : MonoBehaviour
{ 
public UnityEngine.AI.NavMeshAgent agent;



public int destPoint = 0;
public Transform goal;

public float playerDistance;
public float awareAI;
public float atkRange;

[Header("AtaqueBasico")]
public GameObject basicoGO;

public bool coPlay;
public bool ataco;

PlayerDmg plyrDmg;

[Header("FeedbackVisual")]
[SerializeField] GameObject Dog;
Renderer dogRender;

[Header("Sonidos")]
public AudioSource grunido;
public AudioSource mordisco;
public AudioSource caminar;

void Start()
{
	UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

	goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
	plyrDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
	agent.SetDestination(goal.position);
	basicoGO.SetActive(false);

	coPlay = false;
	ataco = false;

	dogRender = Dog.GetComponent<Renderer>();
	agent.isStopped = false;
}

void Update()
{
	playerDistance = Vector3.Distance(transform.position, goal.position);

	if (playerDistance <= awareAI)
	{
		LookAtPlayer();
		Debug.Log("Seen");
		Chase();
		//agent.isStopped = false;
	}
	else if (playerDistance > awareAI)
	{
		LookAtPlayer();
		//agent.isStopped = true;
	}


	if (playerDistance <= atkRange && coPlay == false)
	{
		StartCoroutine(Mordisco());
		mordisco.Play();
		//agent.isStopped = false;
	}
	else if (playerDistance > atkRange)
	{
		LookAtPlayer();
		//agent.isStopped = false;
	}
}

void LookAtPlayer()
{
	transform.LookAt(goal);
	grunido.Play();
}

public void Chase()
{
	agent.SetDestination(goal.position);
	caminar.Play();
}


IEnumerator Mordisco()
{
	coPlay = true;
	agent.isStopped = true;
	ChangeColorPreAtk();
	yield return new WaitForSecondsRealtime(1.75f);
	ChangeColorAtk();
	basicoGO.SetActive(true);
	if (playerDistance <= atkRange)
	{
		ataco = true;
		if (ataco == true)
		{
			plyrDmg.actualvida -= 1.5f;
		}
	}
	yield return new WaitForSecondsRealtime(1f);
	agent.isStopped = false;
	basicoGO.SetActive(false);
	ChangeColorBack();
	ataco = false;
	coPlay = false;
	yield break;
}

void ChangeColorPreAtk()
{
	dogRender.material.color = Color.yellow;
}

void ChangeColorAtk()
{
	dogRender.material.color = Color.red;
}

void ChangeColorBack()
{
	dogRender.material.color = Color.white;
}
}




