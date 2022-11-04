using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OtherEnemiesManager : MonoBehaviour
{
    public GameObject panelArenaAlmas, panelJaulaAlmas, panelCrisalidaAlmas;

    public ConsolaComandosManager comandosManager;

    public void ClosePanelOtherEnemies()
    {
        comandosManager.panelOtherEnemies.SetActive(false);
        comandosManager.buttonsPrincipal.SetActive(true);
    }

    #region Arena Almas
    public void OpenArenaAlmas()
    {
        panelArenaAlmas.SetActive(true);
        comandosManager.panelOtherEnemies.SetActive(false);
    }
    public void CloseArenaAlmas()
    {
        panelArenaAlmas.SetActive(false);
        comandosManager.panelOtherEnemies.SetActive(true);
    }

    #endregion
}
