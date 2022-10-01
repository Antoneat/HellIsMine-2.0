using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoController : MonoBehaviour
{
	public UnityEngine.AI.NavMeshAgent agent;

	public int destPoint = 0;
	public Transform goal;

	public float playerDistance;
	public float awareAI;
	public float atkRange;

	[Header("Vida")]
	public float vida;
	public bool dead;

	[Header("AtaqueBasico")]
	public GameObject basicoGO;
	//public GameObject atkBTxt;

	public bool coPlay;
	[Header("FeedbackVisual")]
	[SerializeField] GameObject Verdugo;
	Renderer verdugoRender;

	int index;
	public GameObject[] spawnPoints;
	public GameObject lanzaPrefab;
	//public bool chargingEffect;
	//public GameObject verdugoMesh;

	void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();
		//agent.autoBraking = false;
		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
		agent.SetDestination(goal.position);

		dead = false;
		//basicoGO.SetActive(false);

		index = spawnPoints.Length;
		//atkBTxt.SetActive(false);

		coPlay = false;
		verdugoRender = Verdugo.GetComponent<Renderer>();
	}

	void Update()
	{

		playerDistance = Vector3.Distance(transform.position, goal.position);

		if (playerDistance <= awareAI)
		{
			LookAtPlayer();
			Debug.Log("Seen");
			//Chase();
			//agent.isStopped = false;
		}
		else if (playerDistance > awareAI)
		{
			LookAtPlayer();
			agent.isStopped = true;
		}


		if (playerDistance <= atkRange && coPlay == false && playerDistance <= awareAI)
		{
			StartCoroutine(LanzaEspiritual());
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

	IEnumerator LanzaEspiritual()
	{
		coPlay = true;
		agent.isStopped = true;
		ChangeColorPreAtk();
		yield return new WaitForSecondsRealtime(1f);
		//agent.isStopped = false;
		SpawnRafaga();
		ChangeColorAtk();
		yield return new WaitForSecondsRealtime(2f);
		//basicoGO.SetActive(false);
		ChangeColorBack();
		coPlay = false;
		yield break;
	}

	void SpawnRafaga()
	{
		for (int i = 0; i < index; i++)
		{
			GameObject spheraQuemadura = Instantiate(lanzaPrefab);
			spheraQuemadura.transform.position = spawnPoints[i].transform.position;
			spheraQuemadura.transform.localRotation = spawnPoints[i].gameObject.transform.rotation;
		}

	}

	void ChangeColorPreAtk()
	{
		verdugoRender.material.color = Color.yellow;
	}

	void ChangeColorAtk()
	{
		verdugoRender.material.color = Color.red;
	}

	void ChangeColorBack()
	{
		verdugoRender.material.color = Color.white;
	}
}
