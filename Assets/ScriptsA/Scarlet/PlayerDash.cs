using System.Collections;
using UnityEngine;

public class PlayerDash : MonoBehaviour
{
    [Header("Dashing")]
    public float dashNewSpeed;
    public bool canDash;
    public bool isDashing;
    public Vector3 orientation;

    public bool upgradeDash;

    [Header("ResetDash")]
    public bool killedEnemy;

    [Header("Componentes")]
    [SerializeField] private Animator anim;
    private PlayerMovement playerMovement;
    private PlayerAttackCombo playerAttackCombo;
    private PlayerHardAttack playerHardAttack;

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

            playerAttackCombo.isAttacking = false;
            playerAttackCombo.armaColliderRight.enabled = false;
            playerAttackCombo.combo = 0;
            playerHardAttack.isHardAttacking = false;
            playerHardAttack.armaCollider1.enabled = false;
            playerHardAttack.armaCollider2.enabled = false;
            playerHardAttack.hardCombo = 0;
        }
    }

    public void Dashing()
    {
        Debug.Log("Dashing");
        playerMovement.maxSpeed = dashNewSpeed;

        if (upgradeDash == true)
        {
            Physics.IgnoreLayerCollision(3, 8, true);
        }
    }

    public void FinishDash()
    {
        Debug.Log("Termino el Dash");
        Invoke(nameof(DelayToDash), 0.4f);
        isDashing = false;
        playerMovement.maxSpeed = 7.2f;

        playerMovement.enabled = true;

        killedEnemy = false;

        Physics.IgnoreLayerCollision(3, 8, false);
    }

    public void DelayToDash()
    {
        canDash = true;
    }
}
