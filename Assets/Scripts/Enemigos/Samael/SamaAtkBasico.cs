using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaAtkBasico : MonoBehaviour
{

	[Header("Ataque Basico")]
	[SerializeField] SamaMov samaMov;
	[SerializeField] Animator anim;

	[Header("Onda Expansiva")]
	public GameObject ondaEx; //
	public Transform spawnerOndaEx; //
	public bool activateOndaExpansiva;
	public AudioSource Source;
	public AudioClip GolpeBasico;
		
	public DialogueTrigger dialogueTriggerBD15;

	void Start()
	{
		anim = GetComponent<Animator>();
		activateOndaExpansiva = false;
	}

	void Update()
	{
	}

	public void StartOfBasicAttack() //Evento cuando empieza la anim de basicAttack
	{
		samaMov.StopChase();
		samaMov.attacking = true;
		samaMov.stare = false;
		Source.PlayOneShot(GolpeBasico);

		activateOndaExpansiva = true;

		anim.ResetTrigger("Samael_Ataque_1");
		anim.ResetTrigger("Samael_Ataque_Especial");
		anim.ResetTrigger("Samael_Prepara_Embestida");

		if(dialogueTriggerBD15 != null)
		{
			dialogueTriggerBD15.EmpezarDialogo();
		}
		
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
		ondaEx.gameObject.transform.localScale = Vector3.one;
		activateOndaExpansiva = false;
	}

	public void OndaExSamael()
	{
		if (activateOndaExpansiva == true)
		{
			Debug.Log("onda activada");
			Instantiate(ondaEx, spawnerOndaEx.position, Quaternion.identity);
		}
	}
}
