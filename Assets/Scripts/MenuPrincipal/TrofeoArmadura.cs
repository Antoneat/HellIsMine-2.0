using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;

public class TrofeoArmadura : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;

    void Awake()
    {
        if(ManagerTrofeos.instance.armaduraComp == 1)
        {
            Destroy(gameObject);
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Trophies.TryUnlock(179312);
            PlayerPrefs.SetInt(ManagerTrofeos.instance.armaduraPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
