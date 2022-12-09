using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TiendaInteracion : MonoBehaviour
{
    public PlayerAttackCombo playerAttackCombo;
    public GameObject panelInicial, panelTiendaMejoras,panelMaster;

    public GameObject MejorasAtaque, MejorasDash;

    public TMP_Text tmpTitulo;
    public TMP_Text tmpDescripcion;
    public GameObject soulIMG;
    public TMP_Text tmpPrecio;

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
        soulIMG.SetActive(false);
        tmpPrecio.text = "";
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[0].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[1].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[2].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[3].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[4].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[5].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[6].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[7].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[8].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[9].price.ToString();
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
        soulIMG.SetActive(true);
        tmpPrecio.text = playerAttackCombo.estadoMejoras[10].price.ToString();
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
        tmpTitulo.text = "";
        tmpDescripcion.text = "";
        soulIMG.SetActive(false);
        tmpPrecio.text = "";
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
        tmpTitulo.text = "";
        tmpDescripcion.text = "";
        soulIMG.SetActive(false);
        tmpPrecio.text = "";
    }

    public void ExitTienda()
    {
        panelMaster.SetActive(false);
        dialogueManagerTIENDA.ToggleMecanicasScarlet(true);
    }
}
