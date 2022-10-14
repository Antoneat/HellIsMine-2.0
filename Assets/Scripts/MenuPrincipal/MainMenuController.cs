using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuController : MonoBehaviour
{
    public GameObject menuInicial, panelBotonesPrincipal, panelOpciones, panelTesoros;

    public MovimientoCamera movimientoCamera;

    void Start()
    {
        panelOpciones.SetActive(false);
        Time.timeScale = 1;
    }

    public void CloseInitialMenu()
    {
        menuInicial.SetActive(false);
        panelBotonesPrincipal.SetActive(true);

        //movimientoCamera.cameraMaster.position = movimientoCamera.Posiciones[1].position;
    }


    #region Opciones
    public void OpenPanelOpciones()
    {
        panelBotonesPrincipal.SetActive(false);
        panelOpciones.SetActive(true);

        //movimientoCamera.cameraMaster.position = movimientoCamera.Posiciones[2].position;
    }

    public void ClosePanelOPciones()
    {
        panelBotonesPrincipal.SetActive(true);
        panelOpciones.SetActive(false);

        //movimientoCamera.cameraMaster.position = movimientoCamera.Posiciones[1].position;
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
