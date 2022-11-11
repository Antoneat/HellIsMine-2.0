using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorController : MonoBehaviour
{
	public UnityEngine.AI.NavMeshAgent agent;

	//public VariableManagerBuscador managerBuscador;

	public Transform goal;

	public float playerDistance;
	public float awareAI;
	public float atkRange;
	public float atkActivator;

	[Header("AtaqueBasico")]
	public GameObject basicoGO;
	public GameObject hitboxPrefab;
	public GameObject mordida;

	public bool coPlay;
	public bool isDead;

	public Animator ataqueBuscador;
	public Animator runBuscador;

	public AudioSource MordSource;
	public AudioClip MordClip;

	PlayerDmg plyrDmg;

	//[Header("FeedbackVisual")]
	//[SerializeField] GameObject Dog;
	//Renderer dogRender;

    void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
		plyrDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
		agent.SetDestination(goal.position);
		basicoGO.SetActive(false);

		coPlay = false;

		//dogRender = Dog.GetComponent<Renderer>();
		agent.isStopped = false;
	}

	void Update()
	{
		//awareAI = managerBuscador.awareAI_SO;
		//atkRange = managerBuscador.atkRange_SO;

		playerDistance = Vector3.Distance(transform.position, goal.position);

		if (playerDistance <= awareAI)
		{
			if (!isDead)
			{
				LookAtPlayer();
			}
			Debug.Log("Seen");
			Chase();
			//agent.isStopped = false;
		}
		else if (playerDistance > awareAI)
		{
			if (!isDead)
			{
				LookAtPlayer();
			}
			//agent.isStopped = true;
		}


		if (playerDistance <= atkActivator && coPlay == false)
		{
			ataqueBuscador.SetBool("AtaqueFull", true);
			//ataqueBuscador.SetBool("AtaqueFull", true);
			//agent.isStopped = false;
		}
		else if (playerDistance > atkRange)
		{
			if (!isDead)
			{
				LookAtPlayer();
			}
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
		runBuscador.SetTrigger("Run");
	}

	public void StartAttack()
	{
		coPlay = true;
		agent.isStopped = true;
	}

	public void CreateHitBox()
	{
		if (playerDistance <= atkRange)
		{
			MordSource.PlayOneShot(MordClip);
			GameObject obj = Instantiate(hitboxPrefab);
			obj.transform.position = mordida.transform.position;
		}
	}

	public void EndAttack()
	{
		agent.isStopped = false;
		coPlay = false;
		ataqueBuscador.SetBool("AtaqueFull", false);
	}

    private void OnDrawGizmos()
    {
		Gizmos.color = Color.blue;
		Gizmos.DrawWireSphere(transform.position,awareAI);
		Gizmos.color = Color.red;
		Gizmos.DrawWireSphere(transform.position, atkRange);
		Gizmos.color = Color.white;
		Gizmos.DrawWireSphere(transform.position, atkActivator);
	}
}


