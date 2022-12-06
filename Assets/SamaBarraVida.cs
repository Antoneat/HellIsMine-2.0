using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class SamaBarraVida : MonoBehaviour
{
    public SamaVida Vida;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = Vida.vida / Vida.maxVida;
    }
}
