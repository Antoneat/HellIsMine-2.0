using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BombController : MonoBehaviour
{

	public UnityEngine.AI.NavMeshAgent agent;

	//public Transform transformRangoExplosion;

	public int destPoint = 0;
	public Transform goal;

	public float playerDistance;
	public float awareAI;
	public float atkRange;


	[Header("AtaqueBasico")]
	public GameObject basicoGO;


	public bool coPlay;

	[Header("FeedbackVisual")]
	[SerializeField] GameObject Bombita;
	Renderer bombitaRender;

	void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
		agent.SetDestination(goal.position);
		basicoGO.SetActive(false);

		agent.isStopped = false;
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
			//agent.isStopped = false;
		}
		else if (playerDistance > awareAI)
		{
			LookAtPlayer();
			//agent.isStopped = true;
		}


		if (playerDistance <= atkRange && coPlay == false)
		{
			StartCoroutine(AtaqueBasico());
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
		agent.SetDestination(goal.position);
	}


	public IEnumerator AtaqueBasico()
	{
		coPlay = true;
		agent.isStopped = true;
		ChangeColorPreAtk();
		yield return new WaitForSecondsRealtime(1.75f);
		agent.isStopped = true;
		//ChangeColorAtk();
		basicoGO.SetActive(true);
		Destroy(gameObject, 1);
		coPlay = false;
		yield break;
	}

	void ChangeColorPreAtk()
	{
		bombitaRender.material.color = Color.yellow;
	}

	private void OnTriggerEnter(Collider collider)
	{

		//if (collider.gameObject.CompareTag("AtkBomb"))
		//{
		//	StartCoroutine(AtaqueBasico());
		//	}
	}
}

