using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    public bool isAttacking;

    public bool canImpulse;
    public bool continueAttack;
    public bool nextAttack; // pase a la sgte anim

    public float rotationSpeed;
    private Quaternion rotateTo;
    private Vector3 direction;

    [Header("Components")]
    public Animator anim;
    public GameObject guadanaParticles;
    public GameObject ataqueBasico1Collider;
    public GameObject ataqueBasico2Collider;
    public GameObject ataqueBasico3Collider;
    private PlayerMovement playerMovement;
    private PlayerDash playerDash;
    private PlayerHardAttack playerHardAttack;
    [SerializeField] private GameObject mousePos;

    public AudioSource ataqueUno,ataqueDos,ataqueTres;
    public AudioClip clip1, clip2, clip3;

    void Start()
    {
        isAttacking = false;
        continueAttack = false;
        nextAttack = false;

        anim = GetComponent<Animator>();

        playerMovement = GetComponent<PlayerMovement>();
        playerDash = GetComponent<PlayerDash>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
    }

    void Update()
    {
        Combo();
        mousePos = GameObject.FindGameObjectWithTag("MousePos");

        if (isAttacking == true && Input.GetMouseButtonDown(0))
        {
            nextAttack = true;
            direction = (mousePos.transform.position - transform.position).normalized;
        }

        if (nextAttack == true)
        {
            anim.SetBool("ContinueCombo", true);
            continueAttack = true;
        }
        else if (nextAttack == false)
        {
            anim.SetBool("ContinueCombo", false);
            continueAttack = false;
        }

        if (nextAttack == false && playerDash.isDashing == false && isAttacking == false && playerHardAttack.isHardAttacking == false)
        {
            Debug.Log("LOQUESEA");
            playerMovement.speedLimiter = 1;
            playerMovement.maxSpeed = 7.2f;
        }
        if(canImpulse)
		{
            ForceMovement();
		}
    }

    public void Combo()
    {
        if (Input.GetMouseButtonDown(0) && isAttacking == false && playerHardAttack.isHardAttacking == false && playerDash.isDashing == false)
        {
            direction = (mousePos.transform.position - transform.position).normalized;

            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);

            anim.SetTrigger("StartCombo");
        }

        if (isAttacking)
        {
            //PARTICLES
            if(guadanaParticles)
            guadanaParticles.SetActive(true);

            //ROTATION
            rotateTo = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotateTo, rotationSpeed * Time.deltaTime);
        }
        else
        {
            //PARTICLES
            if(guadanaParticles)
            guadanaParticles.SetActive(false);
        }
    }

    public void StopMovement()
    {
        playerMovement.speedLimiter = 0f;
        isAttacking = true;
    }

    public void Attacking()
    {
        isAttacking = true;
        continueAttack = false;

        StartCoroutine(UseForce(0.15f));
    }

    public IEnumerator UseForce(float time)
	{
        canImpulse = true;
        yield return new WaitForSeconds(time);
        canImpulse = false;
        yield return null;
	}

    public void ForceMovement()
	{
        //impulso para las anims
        playerMovement.rgbd.AddForce(transform.forward * 1.2f, ForceMode.Impulse);
	}

    public void AfterAttacking()
    {
        nextAttack = false;

        anim.ResetTrigger("StartCombo");
    }
    public void FinalBasicAttack()
    {
        nextAttack = false;
        isAttacking = false;
        continueAttack = false;
    }

    #region Ataques 1, 2 y 3

    public void BasicAttack1Active()
    {
        ataqueUno.PlayOneShot(clip1);
        ataqueBasico1Collider.SetActive(true);
        ataqueBasico2Collider.SetActive(false);
        ataqueBasico3Collider.SetActive(false);
    }
    public void BasicAttack2Active()
    {
        ataqueDos.PlayOneShot(clip2);
        ataqueBasico1Collider.SetActive(false);
        ataqueBasico2Collider.SetActive(true);
        ataqueBasico3Collider.SetActive(false);
    }
    public void BasicAttack3Active()
    {

        ataqueTres.PlayOneShot(clip3);
        ataqueBasico1Collider.SetActive(false);
        ataqueBasico2Collider.SetActive(false);
        ataqueBasico3Collider.SetActive(true);
    }
    public void BasicAttackDeactiveColl()
    {
        ataqueBasico1Collider.SetActive(false);
        ataqueBasico2Collider.SetActive(false);
        ataqueBasico3Collider.SetActive(false);
    }

    #endregion
}
