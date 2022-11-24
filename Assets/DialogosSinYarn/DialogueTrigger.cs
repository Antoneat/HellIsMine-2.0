using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    public Message[] messages;
    public Actor[] actors;

    public DialogueManagerTIENDA DialogueManagerTIENDA;
    public DialogueManager dialogueManager;
    public GameObject[] opciones;

    public bool dialogoParaTienda;
    public bool oneTimeDialogue; //Dialogo que solo se va a mostrar una vez en el juego. (Para la tienda)

    public TiendaInteracion tiendaInteracion;
    public bool dialogoDeTienda;
    public bool tiendaMejorasA, tiendaMejorasB;

    public GameObject ContiniueBtn;

    private void OnTriggerEnter(Collider other) // PARA LOS DIALOGOS IN GAME
    {
        if (other.gameObject.CompareTag("Player"))
        {
            if(dialogoParaTienda == true)
            {
                DialogueManagerTIENDA.OpenDialogue(messages, actors);
            }
            else
            {
                dialogueManager.OpenDialogue(messages, actors);
            }

            if(oneTimeDialogue == true)
            {
                this.gameObject.SetActive(false);
            }
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.CompareTag("Player"))
        {
            if(dialogoParaTienda == true)
            {
                DialogueManagerTIENDA.OpenDialogue(messages, actors);
            }
            else
            {
                dialogueManager.OpenDialogue(messages, actors);
            }

            if(oneTimeDialogue == true)
            {   
                this.enabled = false;
            }
        }
    }

    public void EmpezarDialogo() // Metodo para usarlo con la tienda.
    {
        if(dialogoParaTienda == true)
        {
            DialogueManagerTIENDA.OpenDialogue(messages, actors);
        }
        else
        {
            dialogueManager.OpenDialogue(messages, actors);
        }

        if(oneTimeDialogue == true)
        {
            this.gameObject.SetActive(false);
        }
    }

    void Update() // Opciones
    {
        if(opciones.Length == 0) // Si la conversacion no tiene opciones, no hace nada este update
        {
            return;
        }
        else
        {
            if(dialogoDeTienda == true)
            {
                if (DialogueManagerTIENDA.activeMessage == DialogueManagerTIENDA.currentMessages.Length-1) // si tiene opciones, va a verificar si es el ultimo dialogo para mostrar las opciones
                {
                    opciones[0].SetActive(true);
                    opciones[1].SetActive(true);
                    ContiniueBtn.SetActive(false);
                }
                else
                {
                    opciones[0].SetActive(false);
                    opciones[1].SetActive(false);
                    ContiniueBtn.SetActive(true);
                }
            }
            else
            {
                if (messages.Length == DialogueManagerTIENDA.currentMessages.Length) // si tiene opciones, va a verificar si es el ultimo dialogo para mostrar las opciones
                {
                    opciones[0].SetActive(true);
                    opciones[1].SetActive(true);
                    ContiniueBtn.SetActive(false);
                }
                else 
                {
                    opciones[0].SetActive(false);
                    opciones[1].SetActive(false);
                    ContiniueBtn.SetActive(true);
                }
            }
            
        }

        if(DialogueManagerTIENDA.activeMessage == DialogueManagerTIENDA.currentMessages.Length-1 && tiendaMejorasA == true && dialogoDeTienda == true)
        {
            tiendaInteracion.OpenTiendaUI();
            tiendaInteracion.MejorasDeDashOFF();
        }
        else if(DialogueManagerTIENDA.activeMessage == DialogueManagerTIENDA.currentMessages.Length-1 && tiendaMejorasB == true && dialogoDeTienda == true)
        {
            tiendaInteracion.OpenTiendaUI();
            tiendaInteracion.MejorasDeAtaqueBasicoOFF();
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
