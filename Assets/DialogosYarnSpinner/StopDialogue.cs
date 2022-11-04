using Yarn.Unity;

public class StopDialogue
{
    DialogueRunner dialogueRunner;

    [YarnCommand("StopTheDialogue")]
    
    public void DialogueStopped()
    {
        dialogueRunner.Stop();
    }
}
