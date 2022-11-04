using UnityEngine;
using Yarn.Unity;

public class TestYarn : MonoBehaviour
{
    public DialogueRunner dialogueRunner;
    
    public void Yarn()
    {
        dialogueRunner.StartDialogue("Sucubo");
    }
}
