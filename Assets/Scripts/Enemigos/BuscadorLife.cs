using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorLife : MonoBehaviour
{
    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;

    public Animator animator;
    public GameObject mainBuscador;

    public AudioSource Source;
    public AudioClip MuertePista;

    //public ParticleSystem almas;


    private void Start()
    {
        life = maxLife;
    }

    public void TakeDmg(float dmg)
    {
        life -= dmg;

        if (life <= 0)
        {
            GameObject player = GameObject.Find("ScarletFinal");
            player.GetComponent<PlayerDmg>().GainLife(healAmount);

            player.GetComponent<PlayerDmg>().GainSoul(soulAmount);
            //FALTAN LAS ALMAS
            //player.GetComponent<PlayerDmg>().Alma_Vfx();
            Source.PlayOneShot(MuertePista);
            animator.SetTrigger("Death");
        }
    }

    public void MuertePerro()
    {
        Destroy(mainBuscador);
    }
}