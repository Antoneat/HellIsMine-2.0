using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogoTienda : MonoBehaviour
{
    public int nivel; //Cambiar por la variable de el numero de nivel donde se encuentre Scarlet
    
    private PlayerPasarNivel playerPasarNivel;
    public GameObject[] dialogoTienda;

    void Start()
    {
        playerPasarNivel = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerPasarNivel>();
        nivel = playerPasarNivel.terrenoValor;
    }

    public void DialogoTiendaSegunNivel()
    {
        if(nivel == 0)
        {
            dialogoTienda[0].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
        }

        if(nivel == 1 || nivel == 3)
        {
            dialogoTienda[1].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
        }

        if(nivel == 2 || nivel == 4)
        {
            dialogoTienda[2].GetComponent<DialogueTriggerTIENDA>().EmpezarDialogo();
        }
    }
}
