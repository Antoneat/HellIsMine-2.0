using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaDesplazamiento : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Ataque Embestida")]
    [SerializeField] SamaMov samaMov;
    [SerializeField] Animator anim;
    public CapsuleCollider SamaEmbestida;
    [SerializeField] float speed;
    public AudioSource Source;
    public AudioClip Carga,Embestida;
    public bool atacando;

    void Start()
    {
        anim = GetComponent<Animator>();
        atacando = false;
        SamaEmbestida.enabled = false;
    }

    void Update()
    {
        if (atacando)
        {
            Debug.Log("moving");
            samaMov.agent.Warp((speed * Time.deltaTime) * transform.forward + transform.position);
            //transform.position += transform.forward * (speed * Time.deltaTime);
        }
    }

    public void StartOfEmbestidaAttack() //Evento cuando empieza la anim 
    {
        samaMov.StopChase();
        samaMov.attacking = samaMov.stare = SamaEmbestida.enabled = atacando = true;
        SamaEmbestida.enabled = true;
        Source.PlayOneShot(Carga);
        anim.ResetTrigger("Samael_Ataque_1");
        anim.ResetTrigger("Samael_Ataque_Especial");
        anim.ResetTrigger("Samael_Prepara_Embestida");
    }

    public void EndOfEmbestidaAttack() //Evento cuando termina la anim 
    {
        atacando = false;
        samaMov.Chase();
        samaMov.attacking = false;
        SamaEmbestida.enabled = false;
        Source.PlayOneShot(Embestida);
    }

}
