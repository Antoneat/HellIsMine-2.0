using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class ArenaDanoConfig : MonoBehaviour
{
    [Header("Referencias")]
    public ArenaAlmas arenaAlmas;

    [Header("Textos")]
    public TMP_Text text_dano;
    public TMP_Text text_tiempo;


    private float danoFloat;
    private float tiempoFloat;

    public void Awake()
    {
        danoFloat = arenaAlmas.danoArena;
        tiempoFloat = arenaAlmas.timerMain;
    }

    void Start()
    {
        text_dano.text = "Daño:" + arenaAlmas.danoArena;
        text_tiempo.text = "Tiempo:" + arenaAlmas.timerMain;
    }

    #region Dano
    public void MasUnoDano()
    {
        danoFloat++;

        text_dano.text = "Daño:" + danoFloat;

        arenaAlmas.danoArena = danoFloat;
    }
    public void ChangeDano(string danoAlma)
    {
        int danoAlmaNew = Int32.Parse(danoAlma);
        danoFloat = danoAlmaNew;

        text_dano.text = "Daño:" + danoAlma;

        arenaAlmas.danoArena = danoAlmaNew;
    }
    public void MenosUnoDano()
    {
        danoFloat--;

        text_dano.text = "Daño:" + danoFloat;

        arenaAlmas.danoArena = danoFloat;
    }

    #endregion

    #region Tiempo
    public void MasUnoTiempo()
    {
        tiempoFloat++;

        text_tiempo.text = "Tiempo:" + tiempoFloat;

        arenaAlmas.timerMain = tiempoFloat;
    }
    public void ChangeTiempo(string tiempoAlma)
    {
        int timepoAlmaNew = Int32.Parse(tiempoAlma);
        tiempoFloat = timepoAlmaNew;

        text_tiempo.text = "Tiempo:" + tiempoAlma;
    }
    public void MenosUnoTiempo()
    {
        tiempoFloat--;

        text_tiempo.text = "Tiempo:" + tiempoFloat;

        arenaAlmas.timerMain = tiempoFloat;
    }

    #endregion
}
