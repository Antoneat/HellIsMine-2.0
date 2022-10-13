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
    [SerializeField] private GameObject mousePos;

    public int combo;
    public bool attacking;

    public AudioSource ataqueUno;
    //public AudioSource audioSourse;
    //public AudioClip[] sonido;

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
        if (Input.GetMouseButtonDown(0) && !attacking && !playerHardAttack.hardAttacking)
        {
            attacking = true;
            playerMovement.playerTransform.LookAt(mousePos.transform.position);
            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);
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
        ataqueUno.Play();
        attacking = false;
        armaColliderRight.enabled = true;
        if (combo < 3) combo++;
    }

    public void ActivatingCollsBasicAttack()
    {
        armaColliderRight.enabled = true;
    }

    public void DeactivatingCollsBasicAttack()
    {
        armaColliderRight.enabled = false;
    }

    public void AfterAttacking()
    {
        Debug.Log("Termino de atacar");
        attacking = false;
        playerMovement.enabled = true;
        combo = 0;
    }
}
