using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaVida : MonoBehaviour
{
    public float life; // Vida actual de Yalda
    public float maxLife; // Vida maxima de Yalda

    public float healAmount; // Cantidad de curacion que da al matarla

    public int soulAmount; // Cantidad de almas que da al matarla

    public Animator anim;

    public YaldaPasiva yaldaPasiva;
    public GameObject barraDeVidaYalda; // Barra de vida de Yalda

    //public ParticleSystem almas;

    void OnEnable() // Cuando aparezca Yalda en escena, se mostrara la barra de vida
    {
        barraDeVidaYalda.SetActive(true);
    }

    private void Start()
    {
        yaldaPasiva = GetComponent<YaldaPasiva>();
        life = maxLife;
    }

    public void TakeDmg(float dmg) //Metodo el cual recibe daño
    {
        if(yaldaPasiva.curandose == false)
        {
            life -= dmg;
        }
        
        if (life <= 0)
        {
            barraDeVidaYalda.SetActive(false);
            anim.SetTrigger("Muerte");
        }
    }

    public void Muerte()
    {
        Destroy(gameObject);
    }
}
