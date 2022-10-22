using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitboxDmg : MonoBehaviour
{
    public float dmg; // Cambia dependiendo de su ataque.
    public float modifier; // Igualar a 1 cuando no tenga upgrades.

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<EnemyLife>() && (other.gameObject.CompareTag("Bombita2") || other.gameObject.CompareTag("Buscador") || other.gameObject.CompareTag("Verdugo")))
        {
            Debug.Log("FUNCIONAAAAAAAAAAAA");
            other.gameObject.GetComponent<EnemyLife>().TakeDmg(dmg * modifier);
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<EnemyLife>() && (collision.gameObject.CompareTag("Bombita2") || collision.gameObject.CompareTag("Buscador") || collision.gameObject.CompareTag("Verdugo")))
        {
            Debug.Log("FUNCIONAAAAAAAAAAAA");
            collision.gameObject.GetComponent<EnemyLife>().TakeDmg(dmg * modifier);
        }
    }
}
