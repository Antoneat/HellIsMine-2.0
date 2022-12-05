using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class YaldaVida : MonoBehaviour
{
    public float life; // Vida actual de Yalda
    public float maxLife; // Vida maxima de Yalda

    public float healAmount; // Cantidad de curacion que da al matarla

    public int soulAmount; // Cantidad de almas que da al matarla

    public Animator anim;

    public YaldaPasiva yaldaPasiva;
    [SerializeField] private YaldaMov yaldaMov;
    public GameObject barraDeVidaYalda; // Barra de vida de Yalda
    [SerializeField] UnityEvent DmgSound;
    public AudioSource DeadSource;
    public AudioClip MuertePista;

    //public ParticleSystem almas;

    void OnEnable() // Cuando aparezca Yalda en escena, se mostrara la barra de vida
    {
        barraDeVidaYalda.SetActive(true);
    }

    private void Start()
    {
        yaldaMov = GetComponent<YaldaMov>();
        yaldaPasiva = GetComponent<YaldaPasiva>();
        life = maxLife;
    }

    public void TakeDmg(float dmg) //Metodo el cual recibe daño
    {
        if(yaldaPasiva.curandose == false)
        {
            DmgSound.Invoke();
            life -= dmg;
        }
        
        if (life <= 0)
        {
            if (!DeadSource.isPlaying)
                DeadSource.PlayOneShot(MuertePista);
            barraDeVidaYalda.SetActive(false);
            yaldaMov.enabled = false;
            anim.SetTrigger("Muerte");
        }
    }

    public void Muerte()
    {   
        Destroy(yaldaPasiva.oleada1);
        Destroy(yaldaPasiva.oleada2);
        Destroy(gameObject);
    }
}
