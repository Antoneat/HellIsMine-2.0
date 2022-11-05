using System.Collections;
using UnityEngine;

public class PlayerDash : MonoBehaviour
{
    [Header("Dashing")]
    public float dashNewSpeed;
    public bool canDash;
    public bool isDashing;
    public float cooldown;

    [Header("Componentes")]
    [SerializeField] private Animator anim;
    private PlayerMovement playerMovement;
    private PlayerAttackCombo playerAttackCombo;
    private PlayerHardAttack playerHardAttack;
    public AudioSource dashScarlet;

    void Start()
    {
        playerMovement = GetComponent<PlayerMovement>();
        anim = GetComponent<Animator>();
        playerAttackCombo = GetComponent<PlayerAttackCombo>();
        playerHardAttack = GetComponent<PlayerHardAttack>();
        canDash = true;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isDashing == false && canDash == true)
        {
            canDash = false;
            isDashing = true;
            anim.Play("Dash");
            ResetAttacks();
        }
    }

    public void Dashing()
    {
        playerMovement.maxSpeed = dashNewSpeed;
        Physics.IgnoreLayerCollision(6, 9, true);
    }

    public void FinishDash()
    {
        Invoke(nameof(DelayToDash), cooldown);
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
        playerHardAttack.isHardAttacking = false;
        //playerHardAttack.ataqueHardCollider.enabled = false;
    }
    #endregion
}
