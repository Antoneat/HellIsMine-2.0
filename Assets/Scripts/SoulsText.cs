using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SoulsText : MonoBehaviour
{
    public Text soulsText;

    public PlayerDmg playerDmg;

    void Update()
    {
        playerDmg = FindObjectOfType<PlayerDmg>();

        soulsText.text = "Almas: " + playerDmg.actualSouls.ToString();
    }
}
