using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoTumba : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.tumbaPref, 1);

            Destroy(gameObject);
        }
    }
}
