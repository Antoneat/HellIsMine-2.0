using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDmg : MonoBehaviour
{
    [Header("Vida")]
    public float actualvida;
    private float maxVida = 30f;

    private DmgController dmgC;

    void Start()
    {
        actualvida = 10f;
        dmgC = GameObject.FindGameObjectWithTag("damageController").GetComponent<DmgController>();
        //actualvida = maxVida;
    }

    void Update()
    {
        if (actualvida <= 0)
        {
            Dead();
        }

        if (actualvida > maxVida)
        {
            actualvida = maxVida;
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
            actualvida -= 0.25f; //* mecanica tinoco: dmgC.dmgMultiplier; andre no jodas tkm
        }
        if (collider.gameObject.CompareTag("MordiscoEnemy1"))
        {
            actualvida -= 1.75f;
        }
        if (collider.gameObject.CompareTag("Lanza"))
        {
            actualvida -= 2.5f;
        }
    }
}
