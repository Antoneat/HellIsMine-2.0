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
    public GameObject guadanaParticles;
    public GameObject ataqueHardCollider;
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

        playerMovement = GetComponent<PlayerMovement>();
        playerDash = GetComponent<PlayerDash>();
        playerAttackCombo = GetComponent<PlayerAttackCombo>();
    }

    void Update()
    {
        HardCombo();
        mousePos = GameObject.FindGameObjectWithTag("MousePos");

        if(isHardAttacking == true && Input.GetMouseButtonDown(1))
        {
            direction = (mousePos.transform.position - transform.position).normalized;
        }
    }

    public void HardCombo()
    {
        if (Input.GetMouseButtonDown(1) && isHardAttacking == false && playerAttackCombo.isAttacking == false && playerDash.isDashing == false)
        {
            direction = (mousePos.transform.position - transform.position).normalized;

            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);

            anim.SetTrigger("AtaqueFuerte");
        }

        if (isHardAttacking)
        {
            //PARTICLES
            guadanaParticles.SetActive(true);
            
            //ROTATION
            rotateTo = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotateTo, rotationSpeed * Time.deltaTime);
        }
    }

    public void StopMovementHard()
    {
        playerMovement.maxSpeed = 3f;
        isHardAttacking = true;
    }

    public void HardAttacking()
    {
        isHardAttacking = true;
    }

    public void AfterHardAttacking()
    {
        anim.ResetTrigger("AtaqueFuerte");
    }

    public void FinalHardAttack()
    {
        //nextHardAttack = false;
        playerMovement.maxSpeed = 7.2f;
        isHardAttacking = false;
        //continueHardAttack = false;
    }

    public void HardAttack1Active()
    {
        ataqueHardCollider.SetActive(true);
    }

    public void DeactivatingCollsHardAttack()
    {
        ataqueHardCollider.SetActive(false);
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
