using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDash : MonoBehaviour
{
    private Rigidbody rgbd;
    public PlayerMovement playerMovement;
    public Animator anim;

    [Header("Dashing")]
    public float dashForce;
    public float dashDuration;
    public bool isDashing;

    [Header("Reset")]
    public bool killedEnemy;

    private void Start()
    {
        rgbd = GetComponent<Rigidbody>();
        playerMovement = GetComponent<PlayerMovement>();
        anim = GetComponent<Animator>();
    }
    
    private void FixedUpdate()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !isDashing)
        {
            isDashing = true;
            anim.SetTrigger("Dash");
        }
    }

    public void Dashing()
    {
        //if (killedEnemy == false) return;
        Debug.Log("Dasheando");
       
        playerMovement.maxSpeed = 10f;

        Vector3 forcetoApply = rgbd.velocity.normalized * dashForce;

        rgbd.AddForce(forcetoApply, ForceMode.Impulse);

        // Invoke(nameof(ResetDash),0.01f);

        // Invoke(nameof(ResetDash), dashDuration);
    }

    public void ResetDash()
    {
        Debug.Log("Termino el Dash");
        isDashing = false;
        playerMovement.maxSpeed = 7.2f;
        killedEnemy = false;
    }
}
