using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaAtkEspecial : MonoBehaviour
{
    float cooldown;
    public bool canAtkEspecial;

    public bool activateOndaExpansiva;

    public bool impactFirtsAttack; // Comprobante si impacto con las manos para no crear la onda expansiva
    
    [Header("Manos y OndaEx")]
    public Collider manoCollider;
    public CapsuleCollider ondaEx;

    [Header("Componentes")]
    [SerializeField] YaldaMov yaldaMov;
    [SerializeField] Animator anim;
    [SerializeField] ImpactForSpecial impactForSpecialIzq, impactForSpecialDer;
    void Start()
    {
        cooldown = Random.Range(5,9);
    
        impactFirtsAttack = false;
    }

    void Update()
    {
        if(cooldown >= 0)
        {
            cooldown -= Time.deltaTime;
        }
        else if(cooldown < 0)
        {
            canAtkEspecial = true;
        }

        if (impactFirtsAttack == false && activateOndaExpansiva == true)
        {
		    ondaEx.enabled = true;
            ondaEx.radius += Time.deltaTime * 4f;
        }
    }

    public void StartOfSpecialAttack() //Evento cuando empieza la anim de specialAttack
	{
		yaldaMov.StopChase();
        yaldaMov.attacking = true;
        yaldaMov.stare = false;
        anim.ResetTrigger("BasicAttack");
		anim.ResetTrigger("SpecialAttack");
        anim.ResetTrigger("Teleport");
	}

	public void EndOfSpecialAttack() //Evento cuando termina la anim de specialAttack Y la onda expansiva 
	{	
		yaldaMov.Chase();
        yaldaMov.attacking = false;
        yaldaMov.stare = true;
        cooldown = Random.Range(5,9);
        ResetOndaEx();
        canAtkEspecial = false;
	}

	public void SpecialAttackColliderON() //Evento que activa los colliders de las manos y onda expansiva
	{
		manoCollider.enabled = true;
        activateOndaExpansiva = true;
	}

	public void SpecialAttackColliderOFF() //Evento que desactiva los colliders de las manos
	{
		manoCollider.enabled = false;
	}

    void ResetOndaEx()
    {
        ondaEx.enabled = false;
        impactFirtsAttack = false;
        ondaEx.radius = 0;
        activateOndaExpansiva = false;
    }
}
