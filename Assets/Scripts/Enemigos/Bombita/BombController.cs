using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BombController : MonoBehaviour
{
	
	public UnityEngine.AI.NavMeshAgent agent;

	//public VariableManagerBombita managerBombita;

	public Transform transformRangoExplosion;

	public int destPoint = 0;
	public Transform goal;

	public float playerDistance;
	public float awareAI;
	public float atkRange;
	public AudioSource ExplSource;
	public AudioClip ExplClip;
	
	//public Animator moverseAgitador;
	public Animator ataqueAgitador;
	

	[Header("AtaqueBasico")]
	public GameObject basicoGO;


	public bool coPlay;

	[Header("FeedbackVisual")]
	[SerializeField] GameObject Bombita;



	void Start()
	{
		UnityEngine.AI.NavMeshAgent agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
		agent.SetDestination(goal.position);
		basicoGO.SetActive(false);


		coPlay = false;
		
	}

	void Update()
	{
		//awareAI = managerBombita.awareAI_SO;
		//atkRange = managerBombita.atkRange_SO;

		//transformRangoExplosion.localScale = new Vector3 (managerBombita.rangoExplosion_SO, managerBombita.rangoExplosion_SO, managerBombita.rangoExplosion_SO);

		playerDistance = Vector3.Distance(transform.position, goal.position);

		if (playerDistance <= awareAI && playerDistance > atkRange) // corrección de testeo, si falla regresalo
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
			ataqueAgitador.SetBool("Attack", true);

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
		
		yield return new WaitForSeconds(1f);
		if (playerDistance < atkRange)
		{
			ExplSource.PlayOneShot(ExplClip); //ACA EXPLOTA
			basicoGO.SetActive(true);
			this.GetComponent<BoxCollider>().enabled = false;
			Destroy(gameObject, 1);
		}
		else if (playerDistance >= atkRange)
		{
			basicoGO.SetActive(false);
			agent.isStopped = false;

		}
		agent.isStopped = false;
		coPlay = false;
		yield break;
	}



	private void OnDrawGizmos()
	{
		Gizmos.color = Color.blue;
		Gizmos.DrawWireSphere(transform.position, awareAI);
		Gizmos.color = Color.red;
		Gizmos.DrawWireSphere(transform.position, atkRange);
	}
}

