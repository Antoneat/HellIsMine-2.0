using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    public Image actorImage;
    public Text actorName;
    public Text messageText;
    public RectTransform backgroundBox;
    private string sentence;

    public AudioSource audioSource;

    public float textspeed;
    public KeyCode Tecla;

    Message[] currentMessages;
    Actor[] currentActors;
    int activeMessage = 0;

    public static bool isActive = false;



    public float maxTime; // max tiempo que esperara para mostrar el sgte dialogo
    public float timer; // timer
    public bool messageDone; // comprobante si termino de escribir el mensaje
    
    public void OpenDialogue(Message[] messages, Actor[] actors)
    {
        backgroundBox.localScale = new Vector3(1, 1, 1);
        currentMessages = messages;
        currentActors = actors;
        activeMessage = 0;
        isActive = true;

        Debug.Log("ESTAS CONVERSANDO PRRO, HAS CARGADO: " + messages.Length);
        DisplayMessage();
    }

    public void CloseDialogue()
    {
        backgroundBox.localScale = new Vector3(1, 1, 1);
        isActive = false;
        backgroundBox.localScale = new Vector3(0, 0, 0);

        Debug.Log("Cerraste dialogo prro");
        audioSource.Stop();
    }

    void DisplayMessage()
    {
        Message messageToDisplay = currentMessages[activeMessage];
        StopAllCoroutines();

        sentence = messageToDisplay.message;
        audioSource.clip = messageToDisplay.audioClip;
        audioSource.Play();
        StartCoroutine(TypeSentence(sentence));


        Actor actorToDisplay = currentActors[messageToDisplay.actorId];

        actorName.text = actorToDisplay.name;
        actorImage.sprite = actorToDisplay.sprite;
    }

    IEnumerator TypeSentence(string sentence)
    {
        messageText.text = "";
        foreach (char letter in sentence.ToCharArray())
        {
            messageText.text += letter;
            yield return new WaitForSeconds(0.1f / textspeed);
        }
        messageDone = true;
    }

    public void NextMessage()
    {
        activeMessage++;
        timer = 0;
        messageDone = false;

        if (activeMessage < currentMessages.Length)
        {
            DisplayMessage();
        }
        else
        {
            Debug.Log("ACABASTE DE HABLAR PRRO");
            isActive = false;
            backgroundBox.localScale = new Vector3(0, 0, 0);
            messageDone = false;
        }
    }
    
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(Tecla) && isActive == true || timer == maxTime && isActive == true)
        {
            if (messageText.text == sentence)
            {
                audioSource.Stop();
                NextMessage();
            }
            else
            {
                StopAllCoroutines();
                messageText.text = sentence;
            }
        }

        if(messageDone == true)
        {
            timer += Time.deltaTime;
        }

        if(timer > maxTime)
        {
            timer = maxTime;
        }

    }
}
