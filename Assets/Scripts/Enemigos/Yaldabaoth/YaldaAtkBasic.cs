using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaAtkBasic : MonoBehaviour
{
	// [Header("FeedbackVisual")]
	// [SerializeField] GameObject yalda;

	[Header("Ataque Basico")]
	[SerializeField] YaldaMov yaldaMov;

	[SerializeField] YaldaPasiva yaldaPasiva;
	[SerializeField] YaldaAtkEspecial yaldaAtkEspecial;
	[SerializeField] Animator anim;
	public Collider manoCollider;
	public AudioSource YaldaSource;
	public AudioClip BasClip;

	void Start()
	{
		anim = GetComponent<Animator>();
	}

	public void StartOfBasicAttack() //Evento cuando empieza la anim de basicAttack
	{
		Debug.Log("AtaqueBasicoYalda");
		yaldaMov.StopChase();
		yaldaMov.attacking = true;
		YaldaSource.PlayOneShot(BasClip);
		yaldaMov.stare = false;
		
		yaldaMov.ResetOfTriggersAnim();
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
		manoCollider.gameObject.GetComponent<MeshRenderer>().enabled = true;
	}

	public void BasicAttackColliderOFF() //Evento que desactiva los colliders
	{
		manoCollider.enabled = false;
		manoCollider.gameObject.GetComponent<MeshRenderer>().enabled = false;
	}
}
