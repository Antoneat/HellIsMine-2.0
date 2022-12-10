using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//using UnityEngine.EventSystems;

public class MainMenuControllerAnt : MonoBehaviour
{

    public GameObject optionsMainMenu, salaTrofeosInterfaz;

    public GameObject menuFirstButton, optionsFirstButtonMainMenu, optionsCloseButton, salaTrofeosFirstButton, closeButtonInfo;

    public CamMovimientoMenu movimientoMenu;

    public GameObject[] trofeosInfo;

    public void OpenOptions()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[2];
    }

    public void CloseOptions()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[1];
    }
    public void OpenSalaTrofeos()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[3]; //sale de trofeos 1.1
    }

    public void CloseSalaTrofeos()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[1];
    }

    //ver a los trofeos views 8 - 12

    public void OpenCuchillo()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[8];
    }

    public void OpenCarta()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[9];
    }
    public void OpenBolsaColmillos()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[10];
    }
    public void OpenArmadura()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[11];
    }
    public void OpenTumba()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[12];
    }
    public void CloseInfo()
    {
        movimientoMenu.currentView = movimientoMenu.viewsMp[3];
    }

}
