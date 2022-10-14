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

	public bool coPlay;
	[Header("FeedbackVisual")]
	[SerializeField] GameObject Verdugo;
	Renderer verdugoRender;

	int index;
	public GameObject[] spawnPoints;
	public GameObject lanzaPrefab;


	void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();
		//agent.autoBraking = false;
		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

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
		}
		else if (playerDistance > awareAI)
		{
			LookAtPlayer();
		}


		if (playerDistance <= atkRange && coPlay == false)
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


	IEnumerator LanzaEspiritual()
	{
		coPlay = true;
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
			GameObject LanzaEspiritual = Instantiate(lanzaPrefab);
			LanzaEspiritual.transform.position = spawnPoints[i].transform.position;
			LanzaEspiritual.transform.localRotation = spawnPoints[i].gameObject.transform.rotation;
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
