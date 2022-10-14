using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorDmg : MonoBehaviour
{
    [Header("Vida")]
    public float vida;



    void Start()
    {
        vida = 10;
    }


    void Update()
    {
        MuerteBuscador();
    }


    public void MuerteBuscador()
    {
        if (vida <= 0)
        {
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("Guadana")) vida -= 2; // Baja la vida del enemigo 

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida -= 4; // Lo de arriba.
    }
}