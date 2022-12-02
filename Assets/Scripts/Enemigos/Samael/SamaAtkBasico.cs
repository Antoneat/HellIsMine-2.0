using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaAtkBasico : MonoBehaviour
{

	[Header("Ataque Basico")]
	[SerializeField] SamaMov samaMov;
	[SerializeField] Animator anim;

	[Header("Onda Expansiva")]
	public GameObject ondaEx;
	public bool activateOndaExpansiva;

	void Start()
	{
		anim = GetComponent<Animator>();
		ondaEx.SetActive(false);
	}

	void Update()
	{

		if ( activateOndaExpansiva == true)
		{
			ondaEx.SetActive(true);
			//ondaEx.radius += Time.deltaTime * 4f;
		}
	}

	public void StartOfBasicAttack() //Evento cuando empieza la anim de basicAttack
	{
		samaMov.StopChase();
		samaMov.attacking = true;
		samaMov.stare = false;
		
		activateOndaExpansiva = true;

		anim.ResetTrigger("Samael_Ataque_1");
		anim.ResetTrigger("Samael_Ataque_Especial");
		anim.ResetTrigger("Samael_Prepara_Embestida");
	}

	public void EndOfBasicAttack() //Evento cuando termina la anim de basicAttack
	{
		samaMov.Chase();
		samaMov.attacking = false;
		samaMov.stare = true;
		ResetOndaEx();
	}

	void ResetOndaEx()
	{
		ondaEx.SetActive(false);
		//ondaEx.radius = 0;
		activateOndaExpansiva = false;
	}
}
