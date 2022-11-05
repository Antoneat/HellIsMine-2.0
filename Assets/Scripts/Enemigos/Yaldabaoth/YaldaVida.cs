using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaVida : MonoBehaviour
{
    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;

    public Animator anim;

    public GameObject barraDeVidaYalda;

    //public ParticleSystem almas;

    void OnEnable()
    {
        barraDeVidaYalda.SetActive(true);
    }

    private void Start()
    {
        life = maxLife;
    }

    public void TakeDmg(float dmg)
    {
        life -= dmg;

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
