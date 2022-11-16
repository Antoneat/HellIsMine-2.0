using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoCarta : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.cartaPref, 1);

            Destroy(gameObject);
        }
    }
}
