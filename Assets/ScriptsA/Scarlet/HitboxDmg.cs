using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitboxDmg : MonoBehaviour
{
    public float dmg; // Cambia dependiendo de su ataque.
    public float modifier; // Igualar a 1 cuando no tenga upgrades.

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<EnemyLife>() && (other.gameObject.CompareTag("Bombita") || other.gameObject.CompareTag("Buscador") || other.gameObject.CompareTag("Verdugo")))
        {
            other.gameObject.GetComponent<EnemyLife>().TakeDmg(dmg * modifier);
        }
    }
}
