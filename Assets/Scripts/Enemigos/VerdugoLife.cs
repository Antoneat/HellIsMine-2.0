using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoLife : MonoBehaviour
{
    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;

    //public ParticleSystem almas;


    private void Start()
    {
        maxLife = life;
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

            MuertePerro();
        }
    }

    public void MuertePerro()
    {
        Destroy(gameObject);
    }
}