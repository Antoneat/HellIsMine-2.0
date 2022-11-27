using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogoHablar : MonoBehaviour
{
    public int nivel; //Cambiar por la variable de el numero de nivel donde se encuentre Scarlet
    
    public GameObject[] dialogoHablar;

    public void DialogoHablarSegunNivel()
    {
        switch (nivel)
        {
            case 1:
                
                dialogoHablar[0].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();

            break;

            case 2:
            
                dialogoHablar[1].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();

            break;

            default:
            break;
        }
    }
}
