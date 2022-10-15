using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraVidaBombita : MonoBehaviour
{
    public BombDmg bombDmg;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = bombDmg.vida / bombDmg.maxVida;
    }
}
