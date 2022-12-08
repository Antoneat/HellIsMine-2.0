using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;

public class TrofeoCarta : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;

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
            Trophies.TryUnlock(179315);
            PlayerPrefs.SetInt(ManagerTrofeos.instance.cartaPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
