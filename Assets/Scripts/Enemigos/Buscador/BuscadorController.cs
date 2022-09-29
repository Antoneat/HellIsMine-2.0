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
	//public GameObject atkBTxt;

	public bool coPlay;
	public bool ataco;

	[Header("FeedbackVisual")]
	[SerializeField] GameObject Dog;
	Renderer dogRender;

    void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
		agent.SetDestination(goal.position);


		basicoGO.SetActive(false);
		//atkBTxt.SetActive(false);

		coPlay = false;
		ataco = false;

		dogRender = Dog.GetComponent<Renderer>();

	}

	void Update()
	{

		playerDistance = Vector3.Distance(transform.position, goal.position);

		if (playerDistance <= awareAI)
		{
			LookAtPlayer();
			Debug.Log("Seen");
			Chase();
			agent.isStopped = false;
		}
		else if (playerDistance > awareAI)
		{
			LookAtPlayer();
			agent.isStopped = true;
		}


		if (playerDistance <= atkRange && coPlay == false)
		{
			StartCoroutine(Mordisco());
			agent.isStopped = false;
		}
		else if (playerDistance > atkRange)
		{
			LookAtPlayer();
			agent.isStopped = false;
		}
	}

	void LookAtPlayer()
	{
		transform.LookAt(goal);
	}

	public void Chase()
	{
		agent.stoppingDistance = 5;
		agent.SetDestination(goal.position);

		//transform.Translate(Vector3.forward * Speed * Time.deltaTime);

		if (agent.remainingDistance > agent.stoppingDistance)
		{
			agent.isStopped = false;

		}
		else if (agent.remainingDistance < agent.stoppingDistance)
		{
			agent.isStopped = true;
		}
	}

	IEnumerator Mordisco()
	{
		coPlay = true;
		agent.isStopped = true;
		ChangeColorPreAtk();
		yield return new WaitForSecondsRealtime(1.5f);
		agent.isStopped = false;
		ChangeColorAtk();
		basicoGO.SetActive(true);
		if(playerDistance <= atkRange)
        {
			ataco = true;
        }
		yield return new WaitForSecondsRealtime(2f);
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


