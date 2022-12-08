using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class YaldaBarraDeVida : MonoBehaviour
{
    public YaldaVida yaldaVida;

    public float actualLife;

    public Image barraDeVida;

    void Update()
    {
        actualLife = yaldaVida.life / yaldaVida.maxLife;
        barraDeVida.fillAmount = Mathf.Clamp(actualLife * 0.94f, 0.09f, 0.94f);
        //yaldaVida.life - 0.088f / yaldaVida.maxLife - 0.06f;
    }
}
