using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraVidaBuscador : MonoBehaviour
{
    public BuscadorLife enemyLife;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = enemyLife.life / enemyLife.maxLife;
    }
}
