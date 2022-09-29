using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjetosRompibles : MonoBehaviour
{
    public int vida = 1;


    void Update()
    {
        Muerte();
    }

    private void Muerte()
    {
        if (vida <= 0)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("AtaqueNormal")) vida--;

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
    }
}
