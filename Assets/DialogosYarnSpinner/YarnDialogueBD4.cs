using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn.Unity;

public class YarnDialogueBD4 : MonoBehaviour
{
    public DialogueRunner dialogueRunner;

    void Start()
    {
        dialogueRunner = GameObject.Find("Dialogue System").GetComponent<DialogueRunner>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            dialogueRunner.StartDialogue("BD4");
            gameObject.SetActive(false);
        }
    }
}
