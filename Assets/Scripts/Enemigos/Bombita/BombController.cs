using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BombController : MonoBehaviour
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

	private BombDmg bombDmg;
	public bool coPlay;

	[Header("FeedbackVisual")]
	[SerializeField] GameObject Bombita;
	Renderer bombitaRender;

	void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

		//agent.autoBraking = false;

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

		agent.SetDestination(goal.position);

		basicoGO.SetActive(false);

		//atkBTxt.SetActive(false);

		coPlay = false;
		bombitaRender = Bombita.GetComponent<Renderer>();
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


		if (playerDistance <= atkRange && coPlay==false)
		{
			StartCoroutine(AtaqueBasico());
			agent.isStopped = false;
		}
		else if (playerDistance > atkRange && playerDistance <= awareAI)
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


	public IEnumerator AtaqueBasico()
	{
		coPlay = true;
		agent.isStopped = true;
		ChangeColorPreAtk();
		yield return new WaitForSecondsRealtime(0.75f);
		agent.isStopped = false;
		basicoGO.SetActive(true);
		ChangeColorAtk();
		//atkBTxt.SetActive(true);
		yield return new WaitForSecondsRealtime(1.5f);
		ChangeColorBack();
		basicoGO.SetActive(false);
		Destroy(gameObject);
		//atkBTxt.SetActive(false);
		coPlay = false;
		yield break;
	}

	void ChangeColorPreAtk()
	{
		bombitaRender.material.color = Color.yellow;
	}

	void ChangeColorAtk()
	{
		bombitaRender.material.color = Color.red;
	}

	void ChangeColorBack()
	{
		bombitaRender.material.color = Color.white;
	}

	private void OnTriggerEnter(Collider collider)
	{

		//if (collider.gameObject.CompareTag("AtkBomb"))
		//{
		//	StartCoroutine(AtaqueBasico());
	//	}
	}
}

