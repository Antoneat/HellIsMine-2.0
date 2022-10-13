using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TiendaInteracion : MonoBehaviour
{
    public GameObject panelInicial, panelTiendaMejoras;



    void Start()
    {
        
    }

    void Update()
    {
        
    }

    #region TiendaUI
    public void OpenTiendaUI()
    {
        panelInicial.SetActive(false);
        panelTiendaMejoras.SetActive(true);
    }
    public void CloseTiendaUI()
    {
        panelInicial.SetActive(true);
        panelTiendaMejoras.SetActive(false);
    }
    #endregion

    #region Cortes Agiles
    public void CortesAgiles_1()
    {

    }

    #endregion
}
