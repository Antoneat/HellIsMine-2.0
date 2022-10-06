using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PantallaCompleta : MonoBehaviour
{
    public Toggle togglePC;
    void Start()
    {
        Cursor.lockState = CursorLockMode.Confined;

        if(Screen.fullScreen)
        {
            togglePC.isOn = true;
            Debug.Log("Pantalla Completa");
        }
        else
        {
            togglePC.isOn = false;
            Debug.Log("Modo Ventana");
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ActivarPantallaCompleta(bool pantallaCompleta)
    {
        Screen.fullScreen = pantallaCompleta;
    }
}
