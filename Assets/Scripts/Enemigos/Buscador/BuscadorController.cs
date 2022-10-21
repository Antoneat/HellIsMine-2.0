using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorController : MonoBehaviour
{
	public UnityEngine.AI.NavMeshAgent agent;

	//public VariableManagerBuscador managerBuscador;

	public int destPoint = 0;
	public Transform goal;

	public float playerDistance;
	public float awareAI;
	public float atkRange;

	[Header("AtaqueBasico")]
	public GameObject basicoGO;
	public GameObject hitboxPrefab;
	public GameObject mordida;

	public bool coPlay;
	public bool ataco;

	PlayerDmg plyrDmg;

	[Header("FeedbackVisual")]
	[SerializeField] GameObject Dog;
	Renderer dogRender;

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
		//awareAI = managerBuscador.awareAI_SO;
		//atkRange = managerBuscador.atkRange_SO;

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


	IEnumerator Mordisco()
	{
		coPlay = true;
		agent.isStopped = true;
		ChangeColorPreAtk();
		yield return new WaitForSeconds(1.25f); // cambiar por anim.
		ChangeColorAtk();
		basicoGO.SetActive(true);
		if(playerDistance <= atkRange)
        {
			ataco = true;
			if (ataco == true)
			{
				//plyrDmg.actualvida -= 1.5f;
				GameObject obj = Instantiate(hitboxPrefab);
				obj.transform.position = mordida.transform.position;
			}
		}
		yield return new WaitForSeconds(1f);
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

    private void OnDrawGizmos()
    {
		Gizmos.color = Color.blue;
		Gizmos.DrawWireSphere(transform.position,awareAI);
		Gizmos.color = Color.red;
		Gizmos.DrawWireSphere(transform.position, atkRange);
	}
}


