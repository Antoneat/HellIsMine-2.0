using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoLife : MonoBehaviour
{
    public VariableManagerVerdugo managerVerdugo;

    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;

    public AudioSource DeadSource;
    public AudioClip DeadPista;

    //public ParticleSystem almas;


    private void Start()
    {
        maxLife = life;

        ChangeLifeVerdugo();
        ChangeHealtAmountVerdugo();
        ChangeSoulAmountVerdugo();

        managerVerdugo.OnValueChange += ChangeLifeVerdugo;
        managerVerdugo.OnValueChange += ChangeHealtAmountVerdugo;
        managerVerdugo.OnValueChange += ChangeSoulAmountVerdugo;
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
            //player.GetComponent<PlayerDmg>().Alma_Vfx
            DeadSource.PlayOneShot(DeadPista);
            MuertePerro();
        }
    }

    void ChangeLifeVerdugo()
    {
        life = managerVerdugo.life_SO;
    }

    void ChangeHealtAmountVerdugo()
    {
        healAmount = managerVerdugo.healAmount_SO;
    }

    void ChangeSoulAmountVerdugo()
    {
        soulAmount = managerVerdugo.soulAmount_SO;
    }


    public void MuertePerro()
    {
        Destroy(gameObject);
    }

    private void OnDestroy()
    {
        managerVerdugo.OnValueChange -= ChangeLifeVerdugo;
        managerVerdugo.OnValueChange -= ChangeHealtAmountVerdugo;
        managerVerdugo.OnValueChange -= ChangeSoulAmountVerdugo;
    }
}