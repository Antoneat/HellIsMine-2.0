using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class PlayerVidaConfig : MonoBehaviour
{
    [Header("Referencias")]
    public PlayerDmg playerDmg;

    [Header("Textos")]
    public TMP_Text text_vida;
    public TMP_Text text_maxVida;
    public TMP_Text text_souls;


    void Start()
    {
        text_vida.text = "Vida:" + playerDmg.actualvida;
        text_maxVida.text = "MaxVida:" + playerDmg.maxVida;
        text_souls.text = "Souls:" + playerDmg.actualSouls;
    }

    // Update is called once per frame
    void Update()
    {
        playerDmg = FindObjectOfType<PlayerDmg>();
    }

    #region Vida
    public void MenosUnoLife()
    {
        playerDmg.actualvida--;

        text_vida.text = "Vida:" + playerDmg.actualvida;
    }
    public void ChangeLife(string vida)
    {
        float vidaNew = Int32.Parse(vida);
        playerDmg.actualvida = vidaNew;

        text_vida.text = "Vida:" + vida;
    }

    public void MasUnoLife()
    {
        playerDmg.actualvida++;

        text_vida.text = "Vida:" + playerDmg.actualvida;
    }
    #endregion
    
    #region MaxVida
    public void MenosUnoMaxLife()
    {
        playerDmg.maxVida--;

        text_maxVida.text = "MaxVida:" + playerDmg.maxVida;
    }
    public void ChangeMaxLife(string maxVida)
    {
        float maxVidaNew = Int32.Parse(maxVida);
        playerDmg.maxVida = maxVidaNew;

        text_maxVida.text = "MaxVida:" + maxVida;
    }

    public void MasUnoMaxLife()
    {
        playerDmg.maxVida++;

        text_maxVida.text = "MaxVida:" + playerDmg.maxVida;
    }
    #endregion
    
    #region Souls
    public void MenosUnoSouls()
    {
        playerDmg.actualSouls--;

        text_souls.text = "Souls:" + playerDmg.actualSouls;
    }
    public void ChangeSouls(string souls)
    {
        int soulsNew = Int32.Parse(souls);
        playerDmg.actualSouls = soulsNew;

        text_souls.text = "Souls:" + souls;
    }

    public void MasUnoSouls()
    {
        playerDmg.actualSouls++;

        text_souls.text = "Souls:" + playerDmg.actualSouls;
    }
    #endregion
}
