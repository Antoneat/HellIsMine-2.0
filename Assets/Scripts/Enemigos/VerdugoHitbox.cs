using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoHitbox : MonoBehaviour
{
    public float dmg; // Cantidad de dmg dado para el player.
    public float modifier = 1f;

    void Update()
    {

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerDmg>() && other.gameObject.CompareTag("Player"))
        {
            if (modifier != 1)
            {
                other.gameObject.GetComponent<PlayerDmg>().LoseLife(dmg * modifier);
            }
            else
            {
                other.gameObject.GetComponent<PlayerDmg>().LoseLife(dmg);
            }
            // crear la inmovilizacion PARA FRANCIS 
            Destroy(gameObject);
        }
    }
}
