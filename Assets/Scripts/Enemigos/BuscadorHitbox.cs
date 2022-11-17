using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class BuscadorHitbox : MonoBehaviour
{
    public float dmg; // Cantidad de dmg dado para el player.
    public float modifier = 1f;

    void Update()
    {
            GameObject player = GameObject.FindGameObjectWithTag("PlayerPivot");
            transform.position = Vector3.MoveTowards(transform.position, player.transform.position, 15f * Time.deltaTime);
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
            Destroy(gameObject, 0.25f);
        }
    }
}
