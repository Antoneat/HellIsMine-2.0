using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDmg : MonoBehaviour
{
    [Header("Vida")]
    public float actualvida;
    private float maxVida = 30f;

    //private DmgController dmgC;

    void Start()
    {
        
        //dmgC = GameObject.FindGameObjectWithTag("damageController").GetComponent<DmgController>();
        actualvida = maxVida;
    }

    void Update()
    {
        if (actualvida <= 0)
        {
            Dead();
        }
    }

    public void GainLife(float life) => actualvida += life;

    public void LoseLife(float dmg) => actualvida -= dmg;

    public void Dead()
    {
        Destroy(gameObject);
    }

    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("AtkBomb"))
        {
            //actualvida -= 0.25f * dmgC.dmgMultiplier;
        }
        if (collider.gameObject.CompareTag("MordiscoEnemy1"))
        {
            actualvida -= 3;
        }
    }
}
