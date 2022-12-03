using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CambiarEscena : MonoBehaviour
{
    public void ChangeScene(int SceneNumber)
    {
        SceneManager.LoadScene(SceneNumber);
        Time.timeScale = 1;
    }

    public void GoToLevel1()
    {
        PlayerPasarNivel.instance.ChargeLevel1();
    }

    public void GoToLevel2()
    {
        PlayerPasarNivel.instance.ChargeLevel2();
    }
    
    public void GoToLevel3()
    {
        PlayerPasarNivel.instance.ChargeLevel3();
    }
}
