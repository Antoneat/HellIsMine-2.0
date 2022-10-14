using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorDmg : MonoBehaviour
{
    [Header("Vida")]
    public float vida;

    public AudioSource muerte;
    public AudioSource recibirDañoPerro;

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
            muerte.Play();
        }
    }
    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("Guadana"))
        {
            vida -= 2; // Baja la vida del enemigo 
            recibirDañoPerro.Play();
        }


        if (collider.gameObject.CompareTag("AtaqueDuro"))
        {
            vida -= 4; // Lo de arriba.
            recibirDañoPerro.Play();
        } 
    }
}