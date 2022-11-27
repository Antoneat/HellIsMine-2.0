using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    public Message[] messages;
    public Actor[] actors;

    public DialogueManager dialogueManager;

    public bool oneTimeDialogue; //Dialogo que solo se va a mostrar una vez en el juego. (Para la tienda)

    public GameObject ContiniueBtn;


    private void OnTriggerEnter(Collider other) // PARA LOS DIALOGOS IN GAME
    {
        if (other.gameObject.CompareTag("Player"))
        {
            dialogueManager.OpenDialogue(messages, actors);
            DestroyDialogue();
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.CompareTag("Player"))
        {
            dialogueManager.OpenDialogue(messages, actors);
            Destroy(this);
        }
    }

    public void EmpezarDialogo() // Metodo para usarlo con la tienda.
    {
        dialogueManager.OpenDialogue(messages, actors);
        DestroyDialogue();
    }
    
    private void DestroyDialogue()
    {
        if(oneTimeDialogue)
        {
            Destroy(gameObject);
        }
    }
}

[System.Serializable]
public class Message
{
    public int actorId;
    public string message;
    public AudioClip audioClip;
}

[System.Serializable]
public class Actor
{
    public string name;
    public Sprite sprite;
}
