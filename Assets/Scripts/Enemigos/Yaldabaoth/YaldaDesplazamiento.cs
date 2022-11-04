using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaDesplazamiento : MonoBehaviour
{
    public float cooldownToTP;

    public Transform finalPosition;
    public Transform inicialPosition;
    public float desiredDuration;
    public float elapsedTime;
    public float percentageComplete;

    public bool tping; //Comprobande para tpearse al lado del player.
    private bool activateOndaExTp; 

    [Header("Componentes")]
    [SerializeField] YaldaMov yaldaMov;
    [SerializeField] Animator anim;
    public CapsuleCollider ondaEx;

    void Start()
    {
        yaldaMov = GetComponent<YaldaMov>();
        tping = false;
        activateOndaExTp = false;

        inicialPosition = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
    }

    void Update()
    {
        if(yaldaMov.playerDistance > yaldaMov.awareAI && yaldaMov.attacking == false)
        {
            if(cooldownToTP >= 0)
            {
                cooldownToTP -= Time.deltaTime;
            }
        }

        if(tping == true && yaldaMov.playerDistance >= yaldaMov.atkRange)
        {
            elapsedTime += Time.deltaTime;
            percentageComplete = elapsedTime / desiredDuration;
            transform.position = Vector3.Lerp(inicialPosition.position, finalPosition.position, percentageComplete);
        }

        if(activateOndaExTp == true)
        {
            ondaEx.enabled = true;
            ondaEx.radius += Time.deltaTime * 2f;
        }
    }

    public void StartOfTpYalda()
    {
        yaldaMov.attacking = true;
        anim.ResetTrigger("BasicAttack");
		anim.ResetTrigger("SpecialAttack");
        anim.ResetTrigger("Teleport");
    }

    public void GoingToTeleport()
    {
        tping = true;
        yaldaMov.stare = true;
    }

    public void FinishTp()
    {
        tping = false;
    }

    public void TpAttackON()
    {
        activateOndaExTp = true;
    }

    public void EndOfTpYalda()
    {
        yaldaMov.attacking = false;
        activateOndaExTp = false;
        ondaEx.radius = 0f;
        ondaEx.enabled = false;
        elapsedTime = 0f;
        cooldownToTP = 5f;
    }
}
