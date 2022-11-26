using System.Collections;
using UnityEngine;
using TMPro;

public class Dialogue : MonoBehaviour
{
    //[SerializeField] private GameObject dialogueMark;    // Marca el cual aparece encima del npc.
    [SerializeField] private GameObject dialoguePanel;   // Panel del dialogo en el Canvas.
    [SerializeField] private GameObject dialogueGO;      // GameObject que activa el texto.
    [SerializeField] private TMP_Text dialogueText;
    [SerializeField, TextArea(4, 6)] public string[] dialogueLines;     // Array de texto que guarda los dialogos (se pueden modificar su orden en el inspector)

    public float typingTime = 0.05f;    // Tiempo en el que aparece caracter por caracter.

    public bool PlayerInRange;  // Trigger que detecta si esta en rango para ejecutar el dialogo.
    public bool didDialogueStart;   // Comprobante si el dialogo todavia no empieza.
    public int lineIndex;   // Indice que se usara para comprobar 

    [SerializeField] private PlayerMovement playerMovement;
    //[SerializeField] private PlayerOrientation playerOrientation; 

    void Start()
    {
        playerMovement = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerMovement>();
        //playerOrientation = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerOrientation>();
    }

    void Update()
    {
        if (PlayerInRange && Input.GetKeyDown(KeyCode.E)) // Si el jugador esta en rango y le da a la tecla E
        {
            if (!didDialogueStart) // Y si el jugador todavia no empieza un dialogo
            {
                StartDialogue();
            }
            else if(dialogueText.text == dialogueLines[lineIndex]) // Si el texto mostrado en pantalla es igual al string que le corresponde;
            {
                NextDialogueLine();
            }
            else
            {
                StopAllCoroutines();
                dialogueText.text = dialogueLines[lineIndex];
            }
        }
    }

    public void StartDialogue()
    {
        didDialogueStart = true;
        dialoguePanel.SetActive(true);
        dialogueGO.SetActive(true);
        //dialogueMark.SetActive(false);
        lineIndex = 0;
        playerMovement.enabled = false; // movimiento de jugador deshabilitado.
        //playerOrientation.enabled = false; // orientacion del jugados dehabilitado.
        playerMovement.anim.SetBool("Run", false);
        playerMovement.rgbd.velocity = Vector3.zero;
        StartCoroutine(ShowLine());
    }

    public void NextDialogueLine()
    {
        lineIndex++;
        if (lineIndex < dialogueLines.Length)
        {
            StartCoroutine(ShowLine());
        }
        else
        {
            didDialogueStart = false;
            dialoguePanel.SetActive(false);
            dialogueGO.SetActive(false);
            //dialogueMark.SetActive(true);
            playerMovement.enabled = true; // movimiento de jugador habilitado.
            //playerOrientation.enabled = true; // orientacion del jugados habilitado.
        }
    }

    public IEnumerator ShowLine()
    {
        dialogueText.text = string.Empty;   // Muestra en un inicio el texto vacio.

        foreach(char ch in dialogueLines[lineIndex]) // Por cada caracter en el indice actual del array, se mostrara 1 por 1 en el texto del canvas.
        {
            dialogueText.text += ch;
            yield return new WaitForSecondsRealtime(typingTime);
        }
    }

    public void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Player")) // Chequea si el jugador esta dentro del trigger.
        {
            PlayerInRange = true;
            //dialogueMark.SetActive(true);
        }
    }

    public void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject.CompareTag("Player")) // Chequea si el jugador esta afuera del trigger.
        {
            PlayerInRange = false;
            //dialogueMark.SetActive(false);
        }
    }
}
