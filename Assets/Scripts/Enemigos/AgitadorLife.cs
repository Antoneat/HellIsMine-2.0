using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AgitadorLife : MonoBehaviour
{
    public VariableManagerBombita managerBombita;

    public float life;
    public float maxLife;

    public float healAmount;

    //public ParticleSystem almas;


    private void Start()
    {
        maxLife = life;
    }

    #region Agitador
    void ChangeLifeAgitador()
    {
        life = managerBombita.life_SO;
    }

    void ChangeHealtAmountAgitador()
    {
        healAmount = managerBombita.healAmount_SO;
    }

    #endregion

    public void TakeDmg(float dmg)
    {
        life -= dmg;

        if (life <= 0)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            player.GetComponent<PlayerDmg>().GainLife(healAmount);

            Muerte();
            Debug.Log("deberia morir la bomba");
        }
    }

    public void Muerte()
    {
        Destroy(gameObject);
    }
}
