using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrofeoColmillo : MonoBehaviour
{
    void Awake()
    {
        if (ManagerTrofeos.instance.colmilloComp == 1)
        {
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerPrefs.SetInt(ManagerTrofeos.instance.colmilloPref, 1);

            Destroy(gameObject);
        }
    }
}
