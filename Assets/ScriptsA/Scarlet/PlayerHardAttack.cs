using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHardAttack : MonoBehaviour
{
    public bool isHardAttacking;

    public float rotationSpeed;
    private Quaternion rotateTo;
    private Vector3 direction;

    [Header("Components")]
    public Animator anim;
    public Collider ataqueHardCollider;
    private PlayerMovement playerMovement;
    private PlayerDash playerDash;
    private PlayerAttackCombo playerAttackCombo;
    [SerializeField] private GameObject mousePos;

    public AudioSource ataqueDos;
    public AudioSource ataqueTres;

    void Start()
    {
        isHardAttacking = false;

        anim = GetComponent<Animator>();

        playerAttackCombo = GetComponent<PlayerAttackCombo>();
        playerMovement = GetComponent<PlayerMovement>();
        playerDash = GetComponent<PlayerDash>();
    }

    void Update()
    {
        //HardCombo();
        mousePos = GameObject.FindGameObjectWithTag("MousePos");
    }

    public void HardCombo()
    {
        if (Input.GetMouseButtonDown(1) && isHardAttacking == false && playerAttackCombo.isAttacking == false && playerDash.isDashing == false)
        {
            isHardAttacking = true;

            direction = (mousePos.transform.position - transform.position).normalized;

            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);

            Vector3.MoveTowards(transform.position, mousePos.transform.position, 1f);

            anim.Play("AtaqueFuerte");
        }
    }

    public void HardAttacking()
    {
        Debug.Log("AtacandoHARD");
        isHardAttacking = false;
    }

    public void ActivatingCollHardAttack()
    {
        ataqueHardCollider.enabled = true;
    }

    public void DeactivatingCollHardAttack()
    {
        ataqueHardCollider.enabled = false;
    }

    public void AfterHardAttacking()
    {
        Debug.Log("Termino de atacarHARD");
        isHardAttacking = false;
        ataqueHardCollider.enabled = false;

        playerMovement.maxSpeed = 7.2f;
        playerMovement.enabled = true;
    }

    public void AtaqueDosInit() 
    {
        ataqueDos.Play();
    }
    public void AtaqueDosExit() 
    {
        ataqueDos.Stop();
    }

    public void AtaqueTresInit()
    {
        ataqueTres.Play();
    }
    public void AtaqueTresExit()
    {
        ataqueTres.Stop();
    }

}
