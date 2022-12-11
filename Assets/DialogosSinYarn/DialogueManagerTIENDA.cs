using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DialogueManagerTIENDA : MonoBehaviour
{
    public Image actorImage;
    public TMP_Text actorName;
    public TMP_Text messageText;
    public RectTransform backgroundBox;
    public string sentence;

    public AudioSource audioSource;
    
    public GameObject BotonContinuar;

    public KeyCode Tecla;
    public float textspeed;


    public MessageTIENDA[] currentMessagesTIENDA;
    public ActorTIENDA[] currentActorsTIENDA;
    public OpcionesTIENDA[] currentOpcionesTIENDA;
    public int activeMessage = 0;

    public static bool isActive = false;

    public TiendaInteracion tiendaInteracion;
    public GameObject[] mejoras;
    public int mejoraMejoras;
    
    public bool messageDone; // comprobante si termino de escribir el mensaje
    

    [Header("Scarlet")]
    public PlayerMovement playerMovement;
    public PlayerDash playerDash;
    public PlayerAttackCombo playerAttackCombo;
    public PlayerHardAttack playerHardAttack;


    private void Start()
    {
        LoadData();
        playerMovement = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerMovement>();
        playerDash = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDash>();
        playerAttackCombo = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttackCombo>();
        playerHardAttack = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerHardAttack>();    
    }

    void OnDestroy()
    {
        SaveData();    
    }

    private void SaveData()
    {
        ScarletData.instance.mejorasMejoras = mejoraMejoras;
    }

    private void LoadData()
    {
        mejoraMejoras = ScarletData.instance.mejorasMejoras;
    }

    public void OpenDialogue(MessageTIENDA[] messagesTIENDA, ActorTIENDA[] actorsTIENDA, OpcionesTIENDA[] opcionesTIENDA)
    {
        backgroundBox.localScale = new Vector3(1, 1, 1);
        currentMessagesTIENDA = messagesTIENDA;
        currentActorsTIENDA = actorsTIENDA;
        currentOpcionesTIENDA = opcionesTIENDA;
        activeMessage = 0;
        isActive = true;
        messageDone = false;

        Debug.Log("ESTAS CONVERSANDO PRRO, HAS CARGADO: " + messagesTIENDA.Length);
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
        MessageTIENDA messageToDisplay = currentMessagesTIENDA[activeMessage];
        StopAllCoroutines();

        sentence = messageToDisplay.messageTIENDA;
        audioSource.clip = messageToDisplay.audioClipTIENDA;
        audioSource.Play();
        messageToDisplay.unityEventTIENDA.Invoke();
        StartCoroutine(TypeSentence(sentence));


        ActorTIENDA actorToDisplay = currentActorsTIENDA[messageToDisplay.actorIdTIENDA];

        actorName.text = actorToDisplay.nameTIENDA;
        actorImage.sprite = actorToDisplay.spriteTIENDA;
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
        messageDone = false;

        if (activeMessage < currentMessagesTIENDA.Length)
        {
            DisplayMessage();
        }
        else
        {
            Debug.Log("ACABASTE DE HABLAR PRRO");
            isActive = false;
            messageDone = false;
            backgroundBox.localScale = new Vector3(0, 0, 0);
            sentence = "";
        }
    }
    
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(Tecla) && isActive)
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

        // //Dialogos Nivel1
        // if(sentence == "¿Así que por eso deseas salir de aquí? Me da igual siempre y cuando me alimentes ¡Jajaja!")
        // {
        //     mejoraMejoras++;
        // }
        // if(sentence == "Volveré y los mataré yo misma.")
        // {
        //     mejoraMejoras--;
        // }
        // //Dialogos Nivel2
        // if(sentence == "Mis años como asesina harán su trabajo con ella.")
        // {
        //     mejoraMejoras += 2;
        // }
        // if(sentence == "Esta guadaña asesinó a su padre, solo terminaré lo que se empezó.")
        // {
        //     mejoraMejoras -= 2;
        // }
        // //Dialogos Nivel3


        // //Tienda Nivel1
        // if(sentence == "Bueno, te recomiendo esto." && mejoraMejoras > 0) // Para las mejoras de el ataque basico
        // {
        //     tiendaInteracion.OpenTiendaUI();
        //     mejoras[0].SetActive(true); // Mejora de ataque basico.
        //     mejoras[1].SetActive(false);
        //     Debug.Log("Muestra rama Ataques basicos.");
        // }
        // if(sentence == "Bueno, te recomiendo esto." && mejoraMejoras < 0) // Para las mejoras de el dash
        // {
        //     tiendaInteracion.OpenTiendaUI();
        //     mejoras[0].SetActive(false); 
        //     mejoras[1].SetActive(true); // Mejora de Dash.
            
        //     Debug.Log("Muestra rama Dash.");
        // }
        // //Tienda Nivel2
        // if(sentence == "¡Esto podría servirte!" && mejoraMejoras > 0)
        // {
        //     tiendaInteracion.OpenTiendaUI();
        //     mejoras[0].SetActive(true); // Mejora de ataque basico.
        //     mejoras[1].SetActive(false);
        // }
        // if(sentence == "¡Esto podría servirte!" && mejoraMejoras < 0)
        // {
        //     tiendaInteracion.OpenTiendaUI();
        //     mejoras[0].SetActive(false); 
        //     mejoras[1].SetActive(true); // Mejora de Dash.
        // }

        if(currentOpcionesTIENDA.Length != 0) // Si la conversacion no tiene opciones, no hace nada este if
        {
            if (currentMessagesTIENDA.Length == activeMessage + 1 ) // si tiene opciones, va a verificar si es el ultimo dialogo para mostrar las opciones
            {
                currentOpcionesTIENDA[0].opcion.SetActive(true);
                currentOpcionesTIENDA[1].opcion.SetActive(true);
                BotonContinuar.SetActive(false);
            }
        }
    }

    public void ReputacionTienda(int value)
    {
        mejoraMejoras += value;
    }

    public void RecomendacionPorReputacion()
    {
        if(mejoraMejoras > 0)
        {
            tiendaInteracion.OpenTiendaUI();
            mejoras[0].SetActive(true); // Mejora de ataque basico.
            mejoras[1].SetActive(false); // Mejora de Dash.
        }

        if(mejoraMejoras < 0)
        {
            tiendaInteracion.OpenTiendaUI();
            mejoras[0].SetActive(false);  // Mejora de ataque basico.
            mejoras[1].SetActive(true); // Mejora de Dash.
        }
    }

    public void ToggleMecanicasScarlet(bool toggle)
    {
        playerMovement.enabled = toggle;
        playerAttackCombo.canBasicAttack = toggle;
        playerHardAttack.enabled = toggle;
        
        playerDash.canDash = toggle;
        
        if(playerDash.isDashing == true)
        {
            playerDash.canDash = toggle;
            playerDash.ResetAttacks();
        }
    }

    public void ToggleMecanicasScarletBTNSalir(bool toggle)
    {
        playerMovement.enabled = toggle;
        
        playerHardAttack.enabled = toggle;
        
        playerDash.canDash = toggle;
        
        if(playerDash.isDashing == true)
        {
            playerDash.canDash = toggle;
            playerDash.ResetAttacks();
        }
        Invoke(nameof(ForFckSake), 0.5f);
    }

    public void ForFckSake()
    {
        playerAttackCombo.canBasicAttack = !playerAttackCombo.canBasicAttack;
    }

    public void WeirdRunAnimForDialogues()
    {
        playerMovement.anim.SetFloat("Run", 0);
    }
}
