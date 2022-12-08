using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHardAttack : MonoBehaviour
{
    public float rotationSpeed;

    public bool canHardAttack;
    public bool isHardAttacking;
    public float cooldown;
    public float maxCooldown;

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
    public AudioSource ataqueFuerte;
    public AudioClip AtkHClip;

    void Start()
    {
        isHardAttacking = false;
        canHardAttack = true;
        cooldown = maxCooldown;

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

        if(cooldown <= maxCooldown) cooldown += Time.deltaTime;

        if(cooldown > maxCooldown)
        {
            cooldown = maxCooldown;
            Invoke(nameof(DelayToHardAttack), 0f); 
        }
        
        if(isHardAttacking) canHardAttack = false;
    }

    public void HardCombo()
    {
        if (Input.GetMouseButtonDown(1) && isHardAttacking == false && playerDash.isDashing == false && canHardAttack == true)
        {
            canHardAttack = false;
            direction = (mousePos.transform.position - transform.position).normalized;

            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);
            ataqueFuerte.PlayOneShot(AtkHClip);
            //anim.SetTrigger("AtaqueFuerte");
            anim.Play("AtaqueHard1");
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
        cooldown = 0;
    }

    public void HardAttacking()
    {
        isHardAttacking = true;
    }

    public void AfterHardAttacking()
    {
        //Invoke(nameof(DelayToHardAttack), cooldown);
        //anim.ResetTrigger("AtaqueFuerte");
        isHardAttacking = false;
    }

    public void DelayToHardAttack()
    {
        canHardAttack = true;

        // Agregarle aca algo de vfx o sfx que indique que ya se puede usar el ataque fuerte (xd).
    }

    public void FinalHardAttack() // este metodos no esta siendo usado.
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

    #region No ver :D
    public void ResetBasicAttackAndDash()
    {
        playerAttackCombo.isAttacking = false;
        playerAttackCombo.continueAttack = false;
        playerAttackCombo.nextAttack = false;
        playerAttackCombo.ataqueBasico1Collider.SetActive(false);
        playerAttackCombo.ataqueBasico2Collider.SetActive(false);
        playerAttackCombo.ataqueBasico3Collider.SetActive(false);

        playerDash.canDash = true; //testear esta linea.
        playerDash.isDashing = false;
    }
    #endregion
}
