using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraVidaVerdugo : MonoBehaviour
{
    public VerdugoDmg verdugoDmg;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = verdugoDmg.vida / verdugoDmg.maxVida;
    }
}
