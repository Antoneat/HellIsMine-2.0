using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTriggerTIENDA : MonoBehaviour
{
    public MessageTIENDA[] messagesTIENDA;
    public ActorTIENDA[] actorsTIENDA;
    public OpcionesTIENDA[] opcionesTIENDA;

    public GameObject[] opcionesBotonesAnteriores;

    public DialogueManagerTIENDA dialogueManagerTIENDA;



    public bool oneTimeDialogue; //Dialogo que solo se va a mostrar una vez en el juego. (Para la tienda)



    private void OnTriggerEnter(Collider other) // PARA LOS DIALOGOS IN GAME
    {
        if (other.gameObject.CompareTag("Player"))
        {
            dialogueManagerTIENDA.OpenDialogue(messagesTIENDA, actorsTIENDA, opcionesTIENDA);
            DestroyDialogue();
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.CompareTag("Player"))
        {
            dialogueManagerTIENDA.OpenDialogue(messagesTIENDA, actorsTIENDA, opcionesTIENDA);
            Destroy(this);
        }
    }

    public void EmpezarDialogo() // Metodo para usarlo con la tienda.
    {
        dialogueManagerTIENDA.OpenDialogue(messagesTIENDA, actorsTIENDA, opcionesTIENDA);
        DestroyDialogue();

        PorSiVieneDeUnDialogo();
    }

    void DestroyDialogue()
    {
        if(oneTimeDialogue)
        {
            Destroy(gameObject);
        }
    }

    public void PorSiVieneDeUnDialogo()
    {
        if(opcionesBotonesAnteriores.Length != 0)
        {
            opcionesBotonesAnteriores[0].SetActive(false);
            opcionesBotonesAnteriores[1].SetActive(false);
            dialogueManagerTIENDA.BotonContinuar.SetActive(true);
        }
    }

    // void Update()
    // {
    //     if(dialogueManagerTIENDA.currentMessagesTIENDA.Length == dialogueManagerTIENDA.activeMessage + 1 && mejoraAtaqueBasico)
    //     {
    //         tiendaInteracion.OpenTiendaUI();
    //         mejoras[0].SetActive(true); // Mejora de ataque basico.
    //     }
    //     else if(dialogueManagerTIENDA.currentMessagesTIENDA.Length == dialogueManagerTIENDA.activeMessage + 1 && mejoraDash)
    //     {
    //         tiendaInteracion.OpenTiendaUI();
    //         mejoras[1].SetActive(true); // Mejora de Dash
    //     }
    // }
}

[System.Serializable]
public class MessageTIENDA
{
    public int actorIdTIENDA;
    public string messageTIENDA;
    public AudioClip audioClipTIENDA;
}

[System.Serializable]
public class ActorTIENDA
{
    public string nameTIENDA;
    public Sprite spriteTIENDA;
}

[System.Serializable]
public class OpcionesTIENDA
{
    public GameObject opcion;
}

