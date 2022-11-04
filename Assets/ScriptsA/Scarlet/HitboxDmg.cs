using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitboxDmg : MonoBehaviour
{
    public float dmg; // Cambia dependiendo de su ataque.
    public float modifier; // Igualar a 1 cuando no tenga upgrades.

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Bombita2"))
        {
            other.gameObject.GetComponent<AgitadorLife>().TakeDmg(dmg * modifier);
        }
        if (other.gameObject.CompareTag("Buscador"))
        {
            other.gameObject.GetComponent<BuscadorLife>().TakeDmg(dmg * modifier);
        }
        if (other.gameObject.CompareTag("Verdugo"))
        {
            other.gameObject.GetComponent<VerdugoLife>().TakeDmg(dmg * modifier);
        }
        if (other.gameObject.CompareTag("Yalda"))
        {
            other.gameObject.GetComponent<YaldaVida>().TakeDmg(dmg * modifier);
        }

    }
    private void OnCollisionEnter(Collision collision)
    {

    }
}
