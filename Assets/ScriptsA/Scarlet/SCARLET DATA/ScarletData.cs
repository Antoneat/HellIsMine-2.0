using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScarletData : MonoBehaviour
{
    public static ScarletData instance;

    #region PlayerDmg

    [Header("PlayerDmg")]
    public float actualvida;
    public int actualSouls;

    #endregion 

    #region PlayerAttackCombo

    [Header("Mejoras Ataque Basico")]
    public bool CortesAgiles1;
    public bool CortesAgiles2;

    public bool CortesTenaces1;
    public bool CortesTenaces2;

    public bool CortesPerfectos;

    #endregion

    #region PlayerDash

    [Header("Mejoras Dash")]
    public bool DashOfensivo;
    public bool DashAfilado1;
    public bool DashAfilado2;
    public bool DashPotente1;
    public bool DashPotente2;
    public bool MaestroDelMovimieto;

    #endregion

    #region PlayerPasarNivel

    [Header("Nivel Actual")]
    public int terrenoValor;

    #endregion

    #region DialogueManagerTienda

    [Header("Reputacion en Tienda")]
    public int mejorasMejoras;

    #endregion



    private void Awake()
    {
        if(instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            if(instance != null)
            {
                Destroy(gameObject);
            }
        }
    }
}
