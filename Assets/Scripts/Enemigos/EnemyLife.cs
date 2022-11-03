using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyLife : MonoBehaviour
{
    public float life;
    public float maxLife;

    public float healAmount;
    public bool isBomb;

    public int soulAmount;

    //public ParticleSystem almas;
    

    private void Start()
    {
        
        maxLife = life;
    }

    public void TakeDmg(float dmg)
    {
        life -= dmg;

        if(life <= 0)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            player.GetComponent<PlayerDmg>().GainLife(healAmount);

            if (!isBomb)
            {
                player.GetComponent<PlayerDmg>().GainSoul(soulAmount);
                player.GetComponent<PlayerDmg>().Alma_Vfx();
            }
            
            Destroy(gameObject);
            
        }
    }
}
