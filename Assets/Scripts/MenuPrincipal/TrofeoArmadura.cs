using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoArmadura : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.armaduraPref, 1);

            Destroy(gameObject);
        }
    }
}
