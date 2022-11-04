using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsolaComandosManager : MonoBehaviour
{

    public GameObject panelComandos, buttonsPrincipal, panelPlayerConfig, panelCameraConfig, panelOtherEnemies, panelNiveles;

    [Header("Enemigos Paneles")]
    public GameObject panelEnemigos;

    public GameObject panelBombitaConfig;
    public GameObject panelBuscadorConfig;
    public GameObject panelVerdugoConfig;

    [Header("Otros Paneles")]
    public GameObject panelReinicio;

    private PlayerDmg playerDmg;

    private void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Tab))
        {
            panelComandos.SetActive(true);
            Time.timeScale = 0;
        }
    }

    public void ClosePanelComandos()
    {
        panelComandos.SetActive(false);
        Time.timeScale = 1;
    }

    #region Player
    public void OpenPlayerConfig()
    {
        panelPlayerConfig.SetActive(true);
        buttonsPrincipal.SetActive(false);
    }
    public void ClosePlayerConfig()
    {
        panelPlayerConfig.SetActive(false);
        buttonsPrincipal.SetActive(true);

    }

    #endregion

    #region Enemigos
    public void OpenEnemigosConfig()
    {
        buttonsPrincipal.SetActive(false);
        panelEnemigos.SetActive(true);
    }

    public void CloseEnemigosConfig()
    {
        buttonsPrincipal.SetActive(true);
        panelEnemigos.SetActive(false);
    }

    #endregion

    #region Buscador
    public void OpenBuscadorConfig()
    {
        panelEnemigos.SetActive(false);
        panelBuscadorConfig.SetActive(true);
    }

    public void CloseBuscadorConfig()
    {
        panelEnemigos.SetActive(true);
        panelBuscadorConfig.SetActive(false);
    }

    #endregion

    #region Bombita
    public void OpenBombitaConfig()
    {
        panelEnemigos.SetActive(false);
        panelBombitaConfig.SetActive(true);
    }

    public void CloseBombitaConfig()
    {
        panelEnemigos.SetActive(true);
        panelBombitaConfig.SetActive(false);
    }

    #endregion

    #region Verdugo
    public void OpenVerdugoConfig()
    {
        panelEnemigos.SetActive(false);
        panelVerdugoConfig.SetActive(true);
    }

    public void CloseVerdugoConfig()
    {
        panelEnemigos.SetActive(true);
        panelVerdugoConfig.SetActive(false);
    }

    #endregion

    #region Camera
    public void OpenCameraConfig()
    {
        panelCameraConfig.SetActive(true);
        buttonsPrincipal.SetActive(false);
    }
    public void CloseCameraConfig()
    {
        panelCameraConfig.SetActive(false);
        buttonsPrincipal.SetActive(true);

    }

    #endregion

    #region Other Enemies
    public void OpenOtherEnemiesConfig()
    {
        panelOtherEnemies.SetActive(true);
        buttonsPrincipal.SetActive(false);
    }
    public void CloseOtherEnemiesConfig()
    {
        panelOtherEnemies.SetActive(false);
        buttonsPrincipal.SetActive(true);

    }

    #endregion
    
    #region Niveles
    public void OpenNivelesConfig()
    {
        panelNiveles.SetActive(true);
        buttonsPrincipal.SetActive(false);
    }
    public void CloseNivelesConfig()
    {
        panelNiveles.SetActive(false);
        buttonsPrincipal.SetActive(true);

    }

    #endregion
}
