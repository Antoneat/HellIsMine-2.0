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
	private YaldaPasiva yaldaPasiva;
	private YaldaAtkBasic yaldaAtkBasic;
	private YaldaAtkEspecial yaldaAtkEspecial;
	private YaldaDesplazamiento yaldaDesplazamiento;
	private Animator anim;


	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
		anim = GetComponent<Animator>();
		yaldaPasiva = GetComponent<YaldaPasiva>();
		yaldaAtkBasic = GetComponent<YaldaAtkBasic>();
		yaldaAtkEspecial = GetComponent<YaldaAtkEspecial>();
		yaldaDesplazamiento = GetComponent<YaldaDesplazamiento>();

		goal = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

		agent.SetDestination(goal.position);

		attacking = false;
	}

	void Update()
	{
		playerDistance = Vector3.Distance(transform.position, goal.position); // DISTANCIA entre Yalda y Scarlet

		if(stare == true) // Mira a Scarlet
		{
			LookAtPlayer();
		}
		else if (stare == false) // Deja de mirar a Scarlet
		{
			transform.LookAt(null);
		}

		if (playerDistance <= awareAI && attacking == false && yaldaPasiva.curandose == false) // Si la DISTANCIA es menor o igual al rango de deteccion y si no esta atacando y si no se esta curando entonces...
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

		if(yaldaDesplazamiento.cooldownToTP <= 0 && yaldaPasiva.curandose == false) // Si el cooldown para tepearse hasta Scarlet es menor a 0 entonces...
		{
			anim.SetTrigger("Teleport");
		}

		if (playerDistance <= atkRange && attacking == false && yaldaPasiva.curandose == false) // Si la DISTANCIA es menor o igual al rango de ataque y si no esta atacando entonces...
		{	
			StopChase();

			if(yaldaAtkEspecial.canAtkEspecial == true) // Si puede hacer el ataque especial entonces...
			{
				anim.SetTrigger("SpecialAttack");
			}
			else if (yaldaAtkEspecial.canAtkEspecial == false) // Si no puede hacer el ataque especial entonces...
			{
				anim.SetTrigger("BasicAttack");
			}
		}
	}
	
	public void Chase() // Metodo para seguir a Scarlet. 
	{
		agent.SetDestination(goal.position);
		agent.isStopped = false;
	}

	public void StopChase() // Metodo para dejar de seguir a Scarlet.
	{
		agent.isStopped = true;
	}

	public void LookAtPlayer() // Metodo para mirar a Scarlet
	{
		transform.LookAt(goal);
	}

	public void NotStareAtPlayer() // Metodo para dejar de mirar a Scarlet
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
