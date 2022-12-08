using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CambiarEscena : MonoBehaviour
{
    
    public void GoToLevel1()
    {
        PlayerPasarNivel.instance.GoToLvl1();
    }

    public void GoToLevel2()
    {
        PlayerPasarNivel.instance.GoToLvl2();
    }
    
    public void GoToLevel3()
    {
        PlayerPasarNivel.instance.GoToLvl3();
    }

    public void GotoLevelYalda()
    {
        PlayerPasarNivel.instance.GotoLevelYalda();
    }

    public void GotoLevelSamael()
    {
        PlayerPasarNivel.instance.GotoLevelSamael();
    }
}
