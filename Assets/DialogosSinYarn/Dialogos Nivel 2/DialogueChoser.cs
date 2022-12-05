using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueChoser : MonoBehaviour
{
    public DialogueManagerTIENDA dialogueManagerTIENDA;
    public DialogueTrigger dialogueTriggerA;
    public DialogueTrigger dialogueTriggerB;
    
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.CompareTag("Player"))
        {
            if(dialogueManagerTIENDA.mejoraMejoras > 0)
            {
                dialogueTriggerA.EmpezarDialogo();
            }
            else if(dialogueManagerTIENDA.mejoraMejoras < 0)
            {
                dialogueTriggerB.EmpezarDialogo();
            }
        }
    }
}
