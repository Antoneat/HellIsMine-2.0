using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraDeVida : MonoBehaviour
{
    public PlayerDmg playerDmg;

    public Image barraDeVida;

    public float durationTimer;

    void Update()
    {
        barraDeVida.fillAmount = playerDmg.actualvida / playerDmg.maxVida;

    }
}
