using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TiendaInteracion : MonoBehaviour
{
    public GameObject panelInicial, panelTiendaMejoras,panelMaster;

    public GameObject MejorasAtaque, MejorasDash;

    public TMP_Text tmpTitulo;
    public TMP_Text tmpDescripcion;

    public GameObject DialogoTienda;

    public DialogueManagerTIENDA dialogueManagerTIENDA;



    #region TiendaUI
    public void OpenTiendaUI()
    {
        if(DialogoTienda == null)
        {
            panelInicial.SetActive(false);
            panelTiendaMejoras.SetActive(true);
        }
    }
    public void CloseTiendaUI()
    {
        panelInicial.SetActive(true);
        panelTiendaMejoras.SetActive(false);
    }
    #endregion

    #region Cortes Agiles 1 y 2
    
    public bool CA1;
    public bool CA2;

    public void BtnCA1()
    {
        CA1 = true;

        CA2 = false;
        CT1 = false;
        CT2 = false;
        CP = false;
        tmpTitulo.text = "Cortes Ágiles I";
        tmpDescripcion.text = "Daño: -  Duración: +";
    }

    public void BtnCA2()
    {
        CA2 = true;

        CA1 = false;
        CT1 = false;
        CT2 = false;
        CP = false;
        tmpTitulo.text = "Cortes Ágiles II";
        tmpDescripcion.text = "Daño: --  Duración: ++";
    }

    #endregion

    #region Cortes Tenaces 1 y 2
    
    public bool CT1;
    public bool CT2;

    public void BtnCT1()
    {
        CT1 = true;

        CA1 = false;
        CA2 = false;
        CT2 = false;
        CP = false;
        tmpTitulo.text = "Cortes Tenaces I";
        tmpDescripcion.text = "Daño: +  Duración: -";
    }
    public void BtnCT2()
    {
        CT2 = true;

        CA1 = false;
        CA2 = false;
        CT1 = false;
        CP = false;
        tmpTitulo.text = "Cortes Tenaces II";
        tmpDescripcion.text = "Daño: ++  Duración: --";
    }

    #endregion

    #region Cortes Perfectos
    
    public bool CP;

    public void BtnCP()
    {
        CP = true;

        CA1 = false;
        CA2 = false;
        CT1 = false;
        CT2 = false;
        tmpTitulo.text = "Cortes Perfectos";
        tmpDescripcion.text = "Daño: ++  Duración: ++";
    }
    
    #endregion
    
    #region Dash Ofensivo

    public bool DO;

    public void BtnDO()
    {
        DO = true;
        
        DA1 = false;
        DA2 = false;
        DP1 = false;
        DP2 = false;
        DMDM = false;
        tmpTitulo.text = "Dash Ofensivo";
        tmpDescripcion.text = "Daño: +";
    }

    #endregion

    #region Dash Afilado 1 y 2

    public bool DA1;
    public bool DA2;

    public void BtnDA1()
    {
        DA1 = true;

        DO = false;
        DA2 = false;
        DP1 = false;
        DP2 = false;
        DMDM = false;
        tmpTitulo.text = "Dash Afilado I";
        tmpDescripcion.text = "Daño: +  Alcance: - Velocidad: +";
    }

    public void BtnDA2()
    {
        DA2 = true;

        DA1 = false;
        DO = false;
        DP1 = false;
        DP2 = false;
        DMDM = false;
        tmpTitulo.text = "Dash Afilado II";
        tmpDescripcion.text = "Daño: ++ Alcance: -- Velocidad: ++";
    }

    #endregion

    #region Dash Potente 1 y 2

    public bool DP1;
    public bool DP2;

    public void BtnDP1()
    {
        DP1 = true;

        DA1 = false;
        DA2 = false;
        DO = false;
        DP2 = false;
        DMDM = false;
        tmpTitulo.text = "Dash Potente I";
        tmpDescripcion.text = "Daño: +++ Alcance: + Velocidad: -";
    }

    public void BtnDP2()
    {
        DP2 = true;

        DA1 = false;
        DA2 = false;
        DP1 = false;
        DO = false;
        DMDM = false;
        tmpTitulo.text = "Dash Potente II";
        tmpDescripcion.text = "Daño: ++++ Alcance: ++ Velocidad: --";
    }

    #endregion

    #region Dash Maestro del Movimiento

    public bool DMDM;

    public void BtnDMDM()
    {
        DMDM = true;

        DA1 = false;
        DA2 = false;
        DP1 = false;
        DP2 = false;
        DO = false;
        tmpTitulo.text = "Maestro del Movimiento";
        tmpDescripcion.text = "Daño: ++++++ ";
    }

    #endregion

    public void MejorasDeAtaqueBasicoOFF()
    {
        CA1 = false;
        CA2 = false;
        CT1 = false;
        CT2 = false;
        CP = false;
        MejorasAtaque.SetActive(false);
        MejorasDash.SetActive(true);
    }

    public void MejorasDeDashOFF()
    {
        DO = false;
        DA1 = false;
        DA2 = false;
        DP1 = false;
        DP2 = false;
        DMDM = false;
        MejorasAtaque.SetActive(true);
        MejorasDash.SetActive(false);
    }

    public void ExitTienda()
    {
        panelMaster.SetActive(false);
        dialogueManagerTIENDA.ToggleMecanicasScarlet(true);
    }
}
