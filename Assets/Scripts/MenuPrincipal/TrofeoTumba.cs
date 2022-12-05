using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
            PlayerPrefs.SetInt(ManagerTrofeos.instance.tumbaPref, 1);

            dialogueTrigger.EmpezarDialogo();

            Destroy(gameObject);
        }
    }
}
