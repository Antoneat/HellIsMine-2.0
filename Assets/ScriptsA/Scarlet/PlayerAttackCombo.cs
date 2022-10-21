using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    public bool isAttacking;

    public bool continueAttack;
    public bool nextAttack; // pase a la sgte anim

    public float rotationSpeed;
    private Quaternion rotateTo;
    private Vector3 direction;

    [Header("Components")]
    public Animator anim;
    public GameObject ataqueBasico1Collider;
    public GameObject ataqueBasico2Collider;
    public GameObject ataqueBasico3Collider;
    private PlayerMovement playerMovement;
    private PlayerDash playerDash;
    private PlayerHardAttack playerHardAttack;
    [SerializeField] private GameObject mousePos;

    public AudioSource ataqueUno;

    void Start()
    {
        isAttacking = false;
        nextAttack = false;
        continueAttack = false;

        anim = GetComponent<Animator>();

        playerMovement = GetComponent<PlayerMovement>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        playerDash = GetComponent<PlayerDash>();
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

        if (nextAttack == false && playerDash.isDashing == false && isAttacking == false)
        {
            playerMovement.maxSpeed = 7.2f;
        }
    }

    public void Combo()
    {
        if (Input.GetMouseButtonDown(0) && isAttacking == false && playerHardAttack.isHardAttacking == false && playerDash.isDashing == false)
        {
            direction = (mousePos.transform.position - transform.position).normalized;

            playerMovement.lastTransform = new Vector3(mousePos.transform.position.x, 0, mousePos.transform.position.z);

            Vector3.MoveTowards(transform.position, mousePos.transform.position, 1f);

            anim.SetTrigger("StartCombo");
        }
        //MOVE
        Vector3.MoveTowards(transform.position, mousePos.transform.position, 2f * Time.deltaTime);

        if (isAttacking)
        {
            //ROTATION
            rotateTo = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotateTo, rotationSpeed * Time.deltaTime);
        }
    }

    public void StopMovement()
    {
        playerMovement.maxSpeed = 0f;
        isAttacking = true;
    }

    public void Attacking()
    {
        Debug.Log("Atacando");
        isAttacking = true;
        continueAttack = false;
        ataqueUno.Play();
    }

    public void AfterAttacking()
    {
        Debug.Log("Termino de atacar");

        nextAttack = false;

        anim.ResetTrigger("StartCombo");

        ataqueUno.Stop();
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
        ataqueBasico1Collider.SetActive(true);
        ataqueBasico2Collider.SetActive(false);
        ataqueBasico3Collider.SetActive(false);
    }
    public void BasicAttack2Active()
    {
        ataqueBasico1Collider.SetActive(false);
        ataqueBasico2Collider.SetActive(true);
        ataqueBasico3Collider.SetActive(false);
    }
    public void BasicAttack3Active()
    {
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
