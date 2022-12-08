using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;

public class TrofeoColmillo : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;

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
            Trophies.TryUnlock(179318);
            PlayerPrefs.SetInt(ManagerTrofeos.instance.colmilloPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
