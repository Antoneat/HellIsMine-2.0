using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackCombo : MonoBehaviour
{
    public bool canBasicAttack;
    public bool isAttacking;

    public bool canImpulse;
    public bool continueAttack;
    public bool nextAttack; // pase a la sgte anim

    public float rotationSpeed;
    private Quaternion rotateTo;
    private Vector3 direction;

    [Header("Mejoras")]
    public bool CortesAgiles1;
    public bool CortesAgiles2;

    public bool CortesTenaces1;
    public bool CortesTenaces2;

    public bool CortesPerfectos;
    public float movNewSpeed;
    public CambioColorMejoraTienda cambioColorMejoraTienda;
    public EstadoMejora[] estadoMejoras;

    [Header("Components")]
    public Animator anim;
    private TiendaInteracion tiendaInteracion;
    public HitboxDmg hitboxDmg1, hitboxDmg2, hitboxDmg3, hitboxDmg4;
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
        LoadData();
        isAttacking = false;
        continueAttack = false;
        nextAttack = false;
        canBasicAttack = true;

        anim = GetComponent<Animator>();
        tiendaInteracion = GameObject.FindGameObjectWithTag("CANVAS").GetComponent<TiendaInteracion>();

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
            playerMovement.speedLimiter = 1;
            if(movNewSpeed == 0)
            {
                playerMovement.maxSpeed = 7.2f;
            }
            else
            {
                playerMovement.maxSpeed = movNewSpeed;
            }
        }

        if(canImpulse)
		{
            ForceMovement();
		}
    
        #region MejorasAtaques
    
        if(CortesAgiles1 == false && CortesTenaces1 == false && CortesPerfectos == false) // Nada Aplicado
        {
            anim.SetFloat("VelocidadAnimacion", 1f);
            hitboxDmg1.modifier = 1f;
            hitboxDmg2.modifier = 1f;
            hitboxDmg3.modifier = 1f;
            hitboxDmg4.modifier = 1f;
        }


        if(CortesAgiles1 == true && CortesAgiles2 == false && CortesPerfectos == false) // Corte Agil 1
        {
            hitboxDmg1.modifier = 0.85f;
            hitboxDmg2.modifier = 0.85f;
            hitboxDmg3.modifier = 0.85f;
            hitboxDmg4.modifier = 0.85f;
            cambioColorMejoraTienda.CA1 = true;
            estadoMejoras[0].bought = true;
            movNewSpeed = 8.3f;
        }
        
        if (CortesAgiles1 == true && CortesAgiles2 == true && CortesPerfectos == false) // Corte Agil 2
        {
            hitboxDmg1.modifier = 0.67f;
            hitboxDmg2.modifier = 0.67f;
            hitboxDmg3.modifier = 0.67f;
            hitboxDmg4.modifier = 0.67f;
            cambioColorMejoraTienda.CA2 = true;
            estadoMejoras[1].bought = true;
            movNewSpeed = 9f;

            cambioColorMejoraTienda.CA1 = true;
            estadoMejoras[0].bought = true;
        }


        if(CortesTenaces1 == true && CortesTenaces2 == false && CortesPerfectos == false) // Corte Potente 1
        {
            hitboxDmg1.modifier = 1.15f;
            hitboxDmg2.modifier = 1.15f;
            hitboxDmg3.modifier = 1.15f;
            hitboxDmg4.modifier = 1.15f;
            cambioColorMejoraTienda.CT1 = true;
            estadoMejoras[2].bought = true;
            movNewSpeed = 6.7f;
        }
        
        if (CortesTenaces1 == true && CortesTenaces2 == true && CortesPerfectos == false) // Corte Potente 2
        {
            hitboxDmg1.modifier = 1.33f;
            hitboxDmg2.modifier = 1.33f;
            hitboxDmg3.modifier = 1.33f;
            hitboxDmg4.modifier = 1.33f;
            cambioColorMejoraTienda.CT2 = true;
            estadoMejoras[3].bought = true;
            movNewSpeed = 6f;

            cambioColorMejoraTienda.CT1 = true;
            estadoMejoras[2].bought = true;
        }


        if(CortesPerfectos== true && CortesAgiles1 == true && CortesAgiles2 == true) // Corte Perfecto RAMA AGILES
        {
            hitboxDmg1.modifier += 1.33f;
            hitboxDmg2.modifier += 1.33f;
            hitboxDmg3.modifier += 1.33f;
            hitboxDmg4.modifier += 1.33f;
            cambioColorMejoraTienda.CP = true;
            estadoMejoras[4].bought = true;

            cambioColorMejoraTienda.CA1 = true;
            estadoMejoras[0].bought = true;

            cambioColorMejoraTienda.CA2 = true;
            estadoMejoras[1].bought = true;

            movNewSpeed = 9f;
        }

        if(CortesPerfectos== true && CortesTenaces1 == true && CortesTenaces2 == true) // Corte Perfecto RAMA TENACES
        {
            hitboxDmg1.modifier += 1.33f;
            hitboxDmg2.modifier += 1.33f;
            hitboxDmg3.modifier += 1.33f;
            hitboxDmg4.modifier += 1.33f;
            cambioColorMejoraTienda.CP = true;
            estadoMejoras[4].bought = true;

            cambioColorMejoraTienda.CT1 = true;
            estadoMejoras[2].bought = true;

            cambioColorMejoraTienda.CT2 = true;
            estadoMejoras[3].bought = true;

            movNewSpeed = 8f;
        }

        #endregion
    }

    private void OnDestroy()
    {
        SaveData();
    }

    private void SaveData()
    {
        ScarletData.instance.CortesAgiles1 = CortesAgiles1;
        ScarletData.instance.CortesAgiles2 = CortesAgiles2;
        ScarletData.instance.CortesTenaces1 = CortesTenaces1;
        ScarletData.instance.CortesTenaces2 = CortesTenaces2;
        ScarletData.instance.CortesPerfectos = CortesPerfectos;
    }

    private void LoadData()
    {
        CortesAgiles1 = ScarletData.instance.CortesAgiles1;
        CortesAgiles2 = ScarletData.instance.CortesAgiles2;
        CortesTenaces1 = ScarletData.instance.CortesTenaces1;
        CortesTenaces2 = ScarletData.instance.CortesTenaces2;
        CortesPerfectos = ScarletData.instance.CortesPerfectos;
    }

    public void Combo()
    {
        if (Input.GetMouseButtonDown(0) && isAttacking == false && playerHardAttack.isHardAttacking == false && playerDash.isDashing == false && canBasicAttack == true)
        {
            canBasicAttack = false;
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
        canBasicAttack = true;

        anim.ResetTrigger("StartCombo");
    }
    
    public void FinalBasicAttack()
    {
        canBasicAttack = true;
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
