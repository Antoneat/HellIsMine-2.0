using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ManosDMG : MonoBehaviour
{
    public float dmg; // Cantidad de dmg dado para el player.

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerDmg>() && other.gameObject.CompareTag("Player"))
        {
            other.gameObject.GetComponent<PlayerDmg>().LoseLife(dmg);
        }

    }

}

