using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;

public class TrofeoTumba : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;
    
    void Awake()
    {
        if (ManagerTrofeos.instance.tumbaComp == 1)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Trophies.TryUnlock(179316);
            PlayerPrefs.SetInt(ManagerTrofeos.instance.tumbaPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
