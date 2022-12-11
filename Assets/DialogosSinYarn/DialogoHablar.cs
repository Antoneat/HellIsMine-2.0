using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogoHablar : MonoBehaviour
{
    public int nivel; //Cambiar por la variable de el numero de nivel donde se encuentre Scarlet
    
    private PlayerPasarNivel playerPasarNivel;
    public GameObject[] dialogoHablar;

    void Start()
    {
        playerPasarNivel = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerPasarNivel>();
        nivel = playerPasarNivel.terrenoValor;
    }

    public void DialogoHablarSegunNivel()
    {
        if(nivel == 0)
        {
            if(dialogoHablar[0] != null)
            {
                dialogoHablar[0].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
            }
        }

        if(nivel == 1 || nivel == 3)
        {
            if(dialogoHablar[1] != null)
            {
                dialogoHablar[1].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
            }
        }

        if(nivel == 2 || nivel == 4)
        {
            if(dialogoHablar[2] != null)
            {
                dialogoHablar[2].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
            }
        }
    }
}
