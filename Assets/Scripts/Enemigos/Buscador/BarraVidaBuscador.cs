using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraVidaBuscador : MonoBehaviour
{
    public BuscadorDmg buscadorDmg;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = buscadorDmg.vida / buscadorDmg.maxVida;
    }
}
