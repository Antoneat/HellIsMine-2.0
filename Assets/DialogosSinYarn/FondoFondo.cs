using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FondoFondo : MonoBehaviour
{
    public RectTransform backgroundBox;
    public DialogueManagerTIENDA dialogueManagerTIENDA;

    public bool coleccionableAgarrado;

    void Update()
    {
        if(backgroundBox.localScale == new Vector3(1, 1, 1))
        {
            if(coleccionableAgarrado == false)
            {
                dialogueManagerTIENDA.ToggleMecanicasScarlet(false);
                gameObject.transform.localScale = new Vector3(1, 1, 1);
            }
        }
        else if(backgroundBox.localScale == new Vector3(0, 0, 0))
        {
            dialogueManagerTIENDA.ToggleMecanicasScarlet(true);
            gameObject.transform.localScale = new Vector3(0, 0, 0);
            coleccionableAgarrado = false;
        }
    }

    public void ColeccionableAgarrado(bool i)
    {
        coleccionableAgarrado = i;
    }
}
