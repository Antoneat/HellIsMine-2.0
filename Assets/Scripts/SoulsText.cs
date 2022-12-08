using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class SoulsText : MonoBehaviour
{
    public TMP_Text soulsText;

    public PlayerDmg playerDmg;

    void Update()
    {
        playerDmg = FindObjectOfType<PlayerDmg>();

        soulsText.text = playerDmg.actualSouls.ToString();
    }
}
