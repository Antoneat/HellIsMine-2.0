using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;

public class TrofeoCuchillo : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;

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
            Trophies.TryUnlock(179317);
            PlayerPrefs.SetInt(ManagerTrofeos.instance.cuchilloPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
