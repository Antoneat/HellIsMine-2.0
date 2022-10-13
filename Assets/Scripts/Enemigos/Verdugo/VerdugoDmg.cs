using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoDmg : MonoBehaviour
{
    [Header("Vida")]
    public float vida;

    public AudioSource recibirDañoVerdu;
    public AudioSource muerteVerdu;
    void Start()
    {
        vida = 25;
    }

    void Update()
    {
        MuerteVerdugo();
    }

    public void MuerteVerdugo()
    {
        if (vida <= 0)
        {
            muerteVerdu.Play();
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("Guadana")) vida -= 2; // Baja la vida del enemigo acorde con el valor que se puso en el ataque.
            recibirDañoVerdu.Play();
        if (collider.gameObject.CompareTag("AtaqueDuro")) vida -= 4; // Lo de arriba x2.
            recibirDañoVerdu.Play();
    }
}
