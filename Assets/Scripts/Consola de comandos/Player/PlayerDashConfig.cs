using System.Collections;
using System.Collections.Generic;
using TMPro;
using System;
using UnityEngine;

public class PlayerDashConfig : MonoBehaviour
{
    [Header("Referencias")]
    public PlayerDash playerDash;

    [Header("Textos")]
    public TMP_Text text_dash;
    public TMP_Text text_cdDash;

    void Start()
    {
        playerDash = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDash>();

        text_dash.text = "Dash:" + playerDash.dashNewSpeed;
        text_cdDash.text = "CD_Dash:" + playerDash.cooldown;
    }

    // Update is called once per frame
    void Update()
    {
        playerDash = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDash>();
    }

    #region Dash
    public void MenosUnoDash()
    {
        playerDash.dashNewSpeed--;

        text_dash.text = "Dash:" + playerDash.dashNewSpeed;
    }
    public void ChangeDash(string dash)
    {
        float dashNew = Int32.Parse(dash);
        playerDash.dashNewSpeed = dashNew;

        text_dash.text = "Dash:" + dash;
    }

    public void MasUnoDash()
    {
        playerDash.dashNewSpeed++;

        text_dash.text = "Dash:" + playerDash.dashNewSpeed;
    }
    #endregion
    
    #region Cooldown
    public void MenosUnoCooldownDash()
    {
        playerDash.cooldown--;

        text_cdDash.text = "CD_Dash:" + playerDash.cooldown;
    }
    public void ChangeCooldownDash(string cdDash)
    {
        float cdDashNew = Int32.Parse(cdDash);
        playerDash.cooldown = cdDashNew;

        text_cdDash.text = "CD_Dash:" + cdDash;
    }

    public void MasUnoCooldownDash()
    {
        playerDash.cooldown++;

        text_cdDash.text = "CD_Dash:" + playerDash.cooldown;
    }
    #endregion
}
