using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class SamaMov : MonoBehaviour
{
	public float playerDistance; //Distancia entre enemiy Scarlet

	public float awareAI; //Rango de deteccion
	public float atkRange; //Rango de ataque

	public bool attacking; //Comprobante si esta atacando o no
	public bool stare; //Comprobante si va a mirar hacia el player o no

	[Header("Componentes")]
	public NavMeshAgent agent;
	public Transform goal; //Pivot Transform de Scarlet
	private Animator anim;

	private bool _near;

	[SerializeField] SamaAtkEspecial samaAtkEspecial;
	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
		anim = GetComponent<Animator>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

		agent.SetDestination(goal.position);

		attacking = false;
	}

	void Update()
	{
		anim?.SetFloat("Speed", agent.velocity.magnitude / agent.speed);

		if(!attacking && samaAtkEspecial.jaulas.Count <= 3)
        {
			StopChase();
			anim.SetTrigger("Samael_Ataque_Especial");
			attacking = true;
		}

		playerDistance = Vector3.Distance(transform.position, goal.position);

		if (stare)
		{
			LookAtPlayer();
		}
		else
		{
			transform.LookAt(null);
		}


		if (playerDistance <= awareAI) _near = false;
		if (playerDistance <= awareAI && playerDistance > atkRange && attacking == false)
		{
			Chase();
			stare = true;
		}
		else if (playerDistance > awareAI && attacking == true)
        {
			StopChase();
		}

		if (playerDistance <= atkRange && attacking == false)
		{
			StopChase();
			anim.SetTrigger("Samael_Ataque_1");
			attacking = true;
		}

		if (!_near && playerDistance > awareAI && attacking == false)
		{
			StopChase();
			anim.SetTrigger("Samael_Prepara_Embestida");
			_near = attacking = true;
		}
	}

	public void Chase()
	{
		agent.SetDestination(goal.position);
		agent.isStopped = false;
		//anim.SetTrigger("Samael_Caminar");
	}

	public void StopChase()
	{
		agent.isStopped = true;
		//anim.ResetTrigger("Samael_Caminar");
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
