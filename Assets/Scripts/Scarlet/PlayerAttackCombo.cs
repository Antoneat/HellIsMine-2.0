using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    public Animator anim;
    public BoxCollider armaCollider1;
    public BoxCollider armaCollider2;
    public PlayerHardAttack playerHardAttack;

    public int combo;
    public bool attacking;

    // public AudioSource audioSourse;
    // public AudioClip[] sonido;

    void Start()
    {
        anim = GetComponent<Animator>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        // audioSourse = GetComponent<AudioSouce>();
    }

    void Update()
    {
        Combo();
    }

    public void Combo()
    {
        if (Input.GetKeyDown(KeyCode.J) && !attacking && !playerHardAttack.hardAttacking)
        {
            attacking = true;
            playerHardAttack.hardCombo = 0;
            anim.SetTrigger("Ataque" + combo);
            // audio.clip = sonido[combo];
            // audio.Play();
        }
    }

    public void Attacking()
    {
        Debug.Log("Atacando");
        attacking = false;
        armaCollider1.enabled = true;
        armaCollider2.enabled = true;
        if (combo < 3) combo++;
    }

    public void AfterAttacking()
    {
        Debug.Log("Termino de atacar");
        attacking = false;
        armaCollider1.enabled = false;
        armaCollider2.enabled = true;
        combo = 0;
    }
}
