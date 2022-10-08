using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHardAttack : MonoBehaviour
{
    [Header("Components")]
    public Animator anim;
    public BoxCollider armaCollider1;
    public BoxCollider armaCollider2;
    public PlayerMovement playerMovement;
    public PlayerAttackCombo playerAttackCombo;
    [SerializeField] private GameObject mousePos;

    public int hardCombo;
    public bool hardAttacking;

    // public AudioSource audio;
    // public AudioClip[] sonido;

    void Start()
    {
        anim = GetComponent<Animator>();
        playerAttackCombo = GetComponent<PlayerAttackCombo>();
        playerMovement = GetComponent<PlayerMovement>();
        // audio = GetComponent<AudioSouce>();
    }

    void Update()
    {
        HardCombo();
    }

    public void HardCombo()
    {
        if (Input.GetMouseButtonDown(1) && !hardAttacking && !playerAttackCombo.attacking)
        {
            hardAttacking = true;
            playerMovement.playerTransform.LookAt(mousePos.transform.position);
            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);
            playerAttackCombo.combo = 0;
            anim.SetTrigger("AtaqueFuerte" + hardCombo);
            // audio.clip = sonido[combo];
            // audio.Play();
        }
    }

    public void StopMovement()
    {
        playerMovement.enabled = false;
    }

    public void HardAttacking()
    {
        Debug.Log("AtacandoHARD");
        hardAttacking = false;
        armaCollider1.enabled = true;
        armaCollider2.enabled = true;
        if (hardCombo < 3) hardCombo++;
    }

    public void ActivatingCollsHardAttack()
    {
        armaCollider1.enabled = true;
        armaCollider2.enabled = true;
    }

    public void DeactivatingCollsHardAttack()
    {
        armaCollider1.enabled = false;
        armaCollider2.enabled = false;
    }

    public void AfterHardAttacking()
    {
        Debug.Log("Termino de atacarHARD");
        hardAttacking = false;
        armaCollider1.enabled = false;
        armaCollider2.enabled = false;
        playerMovement.enabled = true;
        hardCombo = 0;
    }
}
