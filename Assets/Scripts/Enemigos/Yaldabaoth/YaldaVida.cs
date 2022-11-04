using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaVida : MonoBehaviour
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
            Muerte();
        }
    }

    public void Muerte()
    {
        Destroy(gameObject);
    }
}
