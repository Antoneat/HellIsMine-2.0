using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuController : MonoBehaviour
{
    public GameObject menuInicial, panelBotonesPrincipal, panelOpciones, panelTesoros;

    void Start()
    {
        panelOpciones.SetActive(false);
        Time.timeScale = 1;
    }

    void Update()
    {

    }

    public void CloseInitialMenu()
    {
        menuInicial.SetActive(false);
        panelBotonesPrincipal.SetActive(true);
    }


    #region Opciones
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

    #endregion

    #region Tesoros
    public void OpenPanelTesoros()
    {
        panelBotonesPrincipal.SetActive(false);
        panelTesoros.SetActive(true);
    }

    public void ClosePanelTesoros()
    {
        panelBotonesPrincipal.SetActive(true);
        panelTesoros.SetActive(false);
    }

    #endregion
}
