using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuscadorDmg : MonoBehaviour
{
    //private PlayerDmg plyrDMG;

    [Header("Vida")]
    public float vida;

    public AudioSource recibirDaño;
    public AudioSource muerte;

    void Start()
    {
        // plyrDMG = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
        vida = 15;
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

        if (collider.gameObject.CompareTag("Guadana")) vida -= 2; // Baja la vida del enemigo acorde con el valor que se puso en el ataque.
            recibirDaño.Play();

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida -= 4; // Lo de arriba x2.
            recibirDaño.Play();
    }
}
