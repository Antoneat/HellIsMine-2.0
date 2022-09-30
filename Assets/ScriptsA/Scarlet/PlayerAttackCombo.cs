using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    [Header("Components")]
    public Animator anim;
    public Collider armaColliderRight;
    public PlayerMovement playerMovement;
    public PlayerHardAttack playerHardAttack;

    public int combo;
    public bool attacking;

    // public AudioSource audioSourse;
    // public AudioClip[] sonido;

    void Start()
    {
        anim = GetComponent<Animator>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        playerMovement = GetComponent<PlayerMovement>();
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

    public void StopMovement()
    {
        playerMovement.enabled = false;
    }

    public void Attacking()
    {
        Debug.Log("Atacando");
        attacking = false;
        armaColliderRight.enabled = true;
        //armaColliderRight.enabled = false;
        if (combo < 3) combo++;
    }

    public void ActivatingCollsBasicAttack()
    {
        armaColliderRight.enabled = false;
        //armaColliderRight.enabled = false;
    }

    public void DeactivatingCollsBasicAttack()
    {
        armaColliderRight.enabled = false;
        //armaColliderRight.enabled = false;
    }

    public void AfterAttacking()
    {
        Debug.Log("Termino de atacar");
        attacking = false;
        playerMovement.enabled = true;
        combo = 0;
    }
}
