using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaAtkBasic : MonoBehaviour
{
	// [Header("FeedbackVisual")]
	// [SerializeField] GameObject yalda;

	[Header("Ataque Basico")]
	[SerializeField] YaldaMov yaldaMov;
	[SerializeField] YaldaAtkEspecial yaldaAtkEspecial;
	[SerializeField] Animator anim;
	public Collider manoCollider;

	void Start()
	{
		anim = GetComponent<Animator>();
	}

	public void StartOfBasicAttack() //Evento cuando empieza la anim de basicAttack
	{
		yaldaMov.StopChase();
		yaldaMov.attacking = true;
		yaldaMov.stare = false;
		anim.ResetTrigger("BasicAttack");
		anim.ResetTrigger("SpecialAttack");
		anim.ResetTrigger("Teleport");
	}

	public void EndOfBasicAttack() //Evento cuando termina la anim de basicAttack
	{	
		yaldaMov.Chase();
		yaldaMov.attacking = false;
		yaldaMov.stare = true;
		yaldaAtkEspecial.impactFirtsAttack = false;
	}

	public void BasicAttackColliderON() //Evento que activa los colliders
	{
		manoCollider.enabled = true;
	}

	public void BasicAttackColliderOFF() //Evento que desactiva los colliders
	{
		manoCollider.enabled = false;
	}
}
