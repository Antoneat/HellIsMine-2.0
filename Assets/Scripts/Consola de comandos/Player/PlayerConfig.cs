using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class PlayerConfig : MonoBehaviour
{

    public GameObject panelDanoAtq, panelPlayerInitial;

    public void OpenDanoAtaques()
    {
        panelDanoAtq.SetActive(true);
        panelPlayerInitial.SetActive(false);
    }
    
    public void CloseDanoAtaques()
    {
        panelDanoAtq.SetActive(false);
        panelPlayerInitial.SetActive(true);
    }
}
