using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuController : MonoBehaviour
{
    public GameObject panelBotonesPrincipal, panelOpciones;

    void Start()
    {
        panelOpciones.SetActive(false);
        Time.timeScale = 1;
    }

    void Update()
    {

    }

    public void OpenPanelOpciones()
    {
        panelBotonesPrincipal.SetActive(false);
        panelOpciones.SetActive(true);
    }

    public void ClosePanelOPciones()
    {
        panelBotonesPrincipal.SetActive(true);
        panelOpciones.SetActive(false);
    }
}
