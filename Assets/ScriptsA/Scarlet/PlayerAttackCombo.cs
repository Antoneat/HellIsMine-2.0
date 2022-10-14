using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    public int combo;
    public bool isAttacking;

    [Header("Components")]
    public Animator anim;
    public Collider armaColliderRight;
    private PlayerMovement playerMovement;
    private PlayerDash playerDash;
    private PlayerHardAttack playerHardAttack;
    [SerializeField] private GameObject mousePos;

    public AudioSource ataqueUno;
    
    // public AudioSource audioSourse;
    // public AudioClip[] sonido;

    void Start()
    {
        combo = 0;
        isAttacking = false;

        anim = GetComponent<Animator>();

        playerMovement = GetComponent<PlayerMovement>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        playerDash = GetComponent<PlayerDash>();

        // audioSourse = GetComponent<AudioSouce>();
    }

    void Update()
    {
        Combo();
    }

    public void Combo()
    {
        if (Input.GetMouseButtonDown(0) && isAttacking == false && playerHardAttack.isHardAttacking == false && playerDash.isDashing == false)
        {
            isAttacking = true;

            playerMovement.playerTransform.LookAt(mousePos.transform.position);
            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);

            Vector3.MoveTowards(transform.position, mousePos.transform.position, 1f);

            playerHardAttack.hardCombo = 0;

            anim.Play("AtaqueBasico" + combo);

            // audio.clip = sonido[combo];
            // audio.Play();
        }
    }

    public void StopMovement()
    {
        playerMovement.maxSpeed = 0f;
    }

    public void Attacking()
    {
        Debug.Log("Atacando");
        isAttacking = false;
        armaColliderRight.enabled = true;
        if (combo < 3) combo++;
        ataqueUno.Play();
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
        isAttacking = false;

        playerMovement.maxSpeed = 7.2f;
        playerMovement.enabled = true;

        combo = 0;
        ataqueUno.Stop();

    }
}
