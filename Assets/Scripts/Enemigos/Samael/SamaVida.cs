using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SamaVida : MonoBehaviour
{

    public float vida;
    public float maxVida; //100
    public Animator anim;

    public SamaPasiva Pasiva;
    [SerializeField] private SamaMov Mov;
    public GameObject barraDeVida; // Barra de vida de
    [SerializeField] UnityEvent DmgSound;
    public AudioSource Source;
    public AudioClip MuertePista;

    //public ParticleSystem almas;

    void OnEnable() // Cuando aparezca Yalda en escena, se mostrara la barra de vida
    {
        barraDeVida.SetActive(true);
    }

    private void Start()
    {
        Mov = GetComponent<SamaMov>();
        Pasiva = GetComponent<SamaPasiva>();
        vida = maxVida;
    }

    public void TakeDmg(float dmg) //Metodo el cual recibe da�o
    {
        if (Pasiva.curandose == false)
        {
            vida -= dmg;
            DmgSound.Invoke();
        }

        if (vida <= 0)
        {
            if (!Source.isPlaying)
            {
                Source.PlayOneShot(MuertePista);
            }
            barraDeVida.SetActive(false);
            Mov.enabled = false;
            anim.SetTrigger("Muerte");
        }
    }

    public void Muerte()
    {
        Destroy(gameObject);
    }
}

