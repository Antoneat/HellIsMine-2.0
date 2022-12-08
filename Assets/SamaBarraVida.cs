using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class SamaBarraVida : MonoBehaviour
{
    public SamaVida Vida;
    public float actualLife;

    public Image barraDeVida;

    void Update()
    {
        actualLife = Vida.vida / Vida.maxVida;
        barraDeVida.fillAmount = Mathf.Clamp(actualLife * 0.94f, 0.09f, 0.94f);
    }
}
