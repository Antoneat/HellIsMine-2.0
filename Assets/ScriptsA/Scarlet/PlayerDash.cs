using System.Collections;
using UnityEngine;

public class PlayerDash : MonoBehaviour
{
    [Header("Dashing")]
    public float dashNewSpeed;
    public bool canDash;
    public bool isDashing;
    public float cooldown;
    public float maxCooldown;

    [Header("Mejoras")]
    public bool DashOfensivo;
    public bool DashAfilado1;
    public bool DashAfilado2;
    public bool DashPotente1;
    public bool DashPotente2;
    public bool MaestroDelMovimieto;
    public CambioColorMejoraTienda cambioColorMejoraTienda;
    public EstadoMejora[] estadoMejoras;

    [Header("Componentes")]
    [SerializeField] private Animator anim;
    public SphereCollider sphereCollider;
    public HitboxDmg hitboxDmgDash;
    private PlayerMovement playerMovement;
    private PlayerAttackCombo playerAttackCombo;
    private PlayerHardAttack playerHardAttack;
    public AudioSource dashScarlet;
    public AudioClip PistaDash;


    void Start()
    {
        LoadData();
        playerMovement = GetComponent<PlayerMovement>();
        anim = GetComponent<Animator>();
        playerAttackCombo = GetComponent<PlayerAttackCombo>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        canDash = true;
        cooldown = 0f;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isDashing == false && canDash == true)
        {
            canDash = false;
            isDashing = true;
            dashScarlet.PlayOneShot(PistaDash);
            anim.Play("Dash");

            if(DashOfensivo == true)
            {
                hitboxDmgDash.dmg = 0.1f;
                cambioColorMejoraTienda.DO = true;
                estadoMejoras[5].bought = true; 
            }

            if(DashAfilado1 == true && DashAfilado2 == false && MaestroDelMovimieto == false)
            {
                hitboxDmgDash.dmg = 0.2f;
                anim.SetFloat("VelocidadAnimacionDash", 0.9f);
                sphereCollider.radius = 0.625f;
                dashNewSpeed = 19.437f;
                cambioColorMejoraTienda.DA1 = true;
                estadoMejoras[6].bought = true; 
            }
            if(DashAfilado1 == true && DashAfilado2 == true && MaestroDelMovimieto == false)
            {
                hitboxDmgDash.dmg = 0.4f;
                anim.SetFloat("VelocidadAnimacionDash", 0.8f);
                sphereCollider.radius = 0.375f;
                dashNewSpeed = 21.204f;
                cambioColorMejoraTienda.DA2 = true;
                estadoMejoras[7].bought = true; 
            }

            if(DashPotente1 == true && DashPotente2 == false && MaestroDelMovimieto == false)
            {
                hitboxDmgDash.dmg = 1f;
                anim.SetFloat("VelocidadAnimacionDash", 1.1f);
                sphereCollider.radius = 1f;
                dashNewSpeed = 16.7865f;
                cambioColorMejoraTienda.DP1 = true;
                estadoMejoras[8].bought = true; 
            }
            if(DashPotente1 == true && DashPotente2 == true && MaestroDelMovimieto == false)
            {
                hitboxDmgDash.dmg = 2f;
                anim.SetFloat("VelocidadAnimacionDash", 1.2f);
                sphereCollider.radius = 1.5f;
                dashNewSpeed = 15.903f;
                cambioColorMejoraTienda.DP2 = true;
                estadoMejoras[9].bought = true; 
            }

            if(MaestroDelMovimieto == true)
            {
                hitboxDmgDash.dmg = 0.4f;
                anim.SetFloat("VelocidadAnimacionDash", 1.3f);
                sphereCollider.radius = 1.5f;
                cambioColorMejoraTienda.DMDM = true;
                estadoMejoras[10].bought = true; 
            }

            ResetAttacks();
        }

        if(cooldown <= maxCooldown) cooldown -= Time.deltaTime;

        if(cooldown < 0)
        {
            cooldown = 0;
            Invoke(nameof(DelayToDash), 0f); 
        }

        if(isDashing) canDash = false;
    }

    private void OnDestroy()
    {
        SaveData();    
    }

    private void SaveData()
    {
        ScarletData.instance.DashOfensivo = DashOfensivo;
        ScarletData.instance.DashAfilado1 = DashAfilado1;
        ScarletData.instance.DashAfilado2 = DashAfilado2;
        ScarletData.instance.DashPotente1 = DashPotente1;
        ScarletData.instance.DashPotente2 = DashPotente2;
        ScarletData.instance.MaestroDelMovimieto = MaestroDelMovimieto;
    }

    private void LoadData()
    {
        DashOfensivo = ScarletData.instance.DashOfensivo;
        DashAfilado1 = ScarletData.instance.DashAfilado1;
        DashAfilado2 = ScarletData.instance.DashAfilado2;
        DashPotente1 = ScarletData.instance.DashPotente1;
        DashPotente2 = ScarletData.instance.DashPotente2;
        MaestroDelMovimieto = ScarletData.instance.MaestroDelMovimieto;
    }

    public void Dashing()
    {
        cooldown = maxCooldown;
        playerMovement.speedLimiter = 1;
        playerMovement.maxSpeed = dashNewSpeed;
        Physics.IgnoreLayerCollision(6, 9, true);
    }

    public void FinishDash()
    {
        isDashing = false;
        playerMovement.maxSpeed = 7.2f;

        playerMovement.enabled = true;

        Physics.IgnoreLayerCollision(6, 9, false);
    }

    public void DelayToDash()
    {
        canDash = true;
    }

    #region No ver :D
    public void ResetAttacks()
    {
        playerAttackCombo.isAttacking = false;
        playerAttackCombo.continueAttack = false;
        playerAttackCombo.nextAttack = false;
        playerAttackCombo.ataqueBasico1Collider.SetActive(false);
        playerAttackCombo.ataqueBasico2Collider.SetActive(false);
        playerAttackCombo.ataqueBasico3Collider.SetActive(false);
        
        //playerHardAttack.canHardAttack = true;
        playerHardAttack.isHardAttacking = false;
        playerHardAttack.ataqueHardCollider.SetActive(false);
    }
    #endregion
}
