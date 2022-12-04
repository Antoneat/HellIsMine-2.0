using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoCarta : MonoBehaviour
{
    void Awake()
    {
        if (ManagerTrofeos.instance.cartaComp == 1)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.cartaPref, 1);

            Destroy(gameObject);
        }
    }
}
