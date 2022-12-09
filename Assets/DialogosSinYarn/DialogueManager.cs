using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DialogueManager : MonoBehaviour
{
    public GameObject actorImage;
    public TMP_Text actorName;
    public TMP_Text messageText;
    public RectTransform backgroundBox;
    private string sentence;

    public AudioSource audioSource;

    public float textspeed;
    public KeyCode Tecla;


    public Message[] currentMessages;
    public Actor[] currentActors;
    public RectTransform rectTransformActor;
    public int activeMessage = 0;

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
        messageDone = false;

        Debug.Log("ESTAS CONVERSANDO PRRO, HAS CARGADO: " + messages.Length);
        DisplayMessage();
    }

    public void CloseDialogue()
    {
        backgroundBox.localScale = new Vector3(1, 1, 1);
        isActive = false;
        messageDone = false;
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
        messageToDisplay.unityEvent.Invoke();
        StartCoroutine(TypeSentence(sentence));


        Actor actorToDisplay = currentActors[messageToDisplay.actorId];

        actorName.text = actorToDisplay.name;
        if (actorToDisplay.imageToDisplay != null)
        {
            actorImage = actorToDisplay.imageToDisplay;
            actorImage.SetActive(true);
        }
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
        actorImage.SetActive(false);

        if (activeMessage < currentMessages.Length)
        {
            DisplayMessage();
        }
        else
        {
            isActive = false;
            messageDone = false;
            backgroundBox.localScale = new Vector3(0, 0, 0);
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
                messageDone = false;
            }
        }

        if(messageDone == true && isActive == true)
        {
            timer += Time.deltaTime;
        }

        if(timer > maxTime)
        {
            timer = maxTime;
        }
        if(isActive == false)
        {
            timer = 0f;
            messageDone = false;
        }
    }
}
