using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHardAttack : MonoBehaviour
{
    public Animator anim;
    public BoxCollider armaCollider1;
    public BoxCollider armaCollider2;
    public PlayerAttackCombo playerAttackCombo;

    public int hardCombo;
    public bool hardAttacking;

    // public AudioSource audio;
    // public AudioClip[] sonido;

    void Start()
    {
        anim = GetComponent<Animator>();
        playerAttackCombo = GetComponent<PlayerAttackCombo>();
        // audio = GetComponent<AudioSouce>();
    }

    void Update()
    {
        HardCombo();
    }

    public void HardCombo()
    {
        if (Input.GetKeyDown(KeyCode.K) && !hardAttacking && !playerAttackCombo.attacking)
        {
            hardAttacking = true;
            playerAttackCombo.combo = 0;
            anim.SetTrigger("AtaqueFuerte" + hardCombo);
            // audio.clip = sonido[combo];
            // audio.Play();
        }
    }

    public void HardAttacking()
    {
        Debug.Log("AtacandoHARD");
        hardAttacking = false;
        armaCollider1.enabled = true;
        armaCollider2.enabled = true;
        if (hardCombo < 3) hardCombo++;
    }

    public void AfterHardAttacking()
    {
        Debug.Log("Termino de atacarHARD");
        hardAttacking = false;
        armaCollider1.enabled = true;
        armaCollider2.enabled = true;
        hardCombo = 0;
    }
}
