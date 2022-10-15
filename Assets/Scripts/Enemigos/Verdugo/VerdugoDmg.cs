using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerdugoDmg : MonoBehaviour
{
    [Header("Vida")]
    public float vida;

    public float maxVida;

    void Start()
    {
        vida = 15;
        maxVida = 15;
    }

    void Update()
    {
        MuerteVerdugo();
    }

    public void MuerteVerdugo()
    {
        if (vida <= 0)
        {
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("Guadana")) vida -= 2; // Baja la vida del enemigo acorde con el valor que se puso en el ataque.

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida -= 4; // Lo de arriba x2.
    }
}
