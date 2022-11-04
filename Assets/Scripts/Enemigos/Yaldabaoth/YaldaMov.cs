using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class YaldaMov : MonoBehaviour
{
	public float playerDistance; //Distancia entre Yalda y Scarlet

	public float awareAI; //Rango de deteccion
	public float atkRange; //Rango de ataque

	public bool attacking; //Comprobante si esta atacando o no
	public bool stare; //Comprobante si va a mirar hacia el player o no

	[Header("Componentes")]
	public NavMeshAgent agent;
	public Transform goal; //Pivot Transform de Scarlet
	private YaldaAtkBasic yaldaAtkBasic;
	private YaldaAtkEspecial yaldaAtkEspecial;
	private YaldaDesplazamiento yaldaDesplazamiento;
	private Animator anim;


	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
		anim = GetComponent<Animator>();
		yaldaAtkBasic = GetComponent<YaldaAtkBasic>();
		yaldaAtkEspecial = GetComponent<YaldaAtkEspecial>();
		yaldaDesplazamiento = GetComponent<YaldaDesplazamiento>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

		agent.SetDestination(goal.position);

		attacking = false;
	}

	void Update()
	{
		playerDistance = Vector3.Distance(transform.position, goal.position);

		if(stare == true)
		{
			LookAtPlayer();
		}
		else if (stare == false)
		{
			transform.LookAt(null);
		}

		if (playerDistance <= awareAI && attacking == false)
		{
			Chase();
			stare = true;
			yaldaDesplazamiento.cooldownToTP = 5f;
		}
		else 
		{
			StopChase();
			stare = false;
		}

		if(yaldaDesplazamiento.cooldownToTP <= 0)
		{
			anim.SetTrigger("Teleport");
		}

		if (playerDistance <= atkRange && attacking == false)
		{	
			StopChase();

			if(yaldaAtkEspecial.canAtkEspecial == true)
			{
				anim.SetTrigger("SpecialAttack");
			}
			else if (yaldaAtkEspecial.canAtkEspecial == false)
			{
				anim.SetTrigger("BasicAttack");
			}
		}
	}
	
	public void Chase()
	{
		agent.SetDestination(goal.position);
		agent.isStopped = false;
	}
	public void StopChase()
	{
		agent.isStopped = true;
	}

	public void LookAtPlayer()
	{
		transform.LookAt(goal);
	}
	public void NotStareAtPlayer()
    {
        stare = false;
    }

	private void OnDrawGizmos()
	{
		Gizmos.color = Color.blue;
		Gizmos.DrawWireSphere(transform.position, awareAI);
		Gizmos.color = Color.red;
		Gizmos.DrawWireSphere(transform.position, atkRange);
	}
}
