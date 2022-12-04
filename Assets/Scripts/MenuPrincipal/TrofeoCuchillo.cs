using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoCuchillo : MonoBehaviour
{
    void Awake()
    {
        if (ManagerTrofeos.instance.cuchilloComp == 1)
        {
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.cuchilloPref, 1);

            Destroy(gameObject);
        }
    }
}
