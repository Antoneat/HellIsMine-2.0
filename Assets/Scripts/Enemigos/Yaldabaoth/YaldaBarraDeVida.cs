using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class YaldaBarraDeVida : MonoBehaviour
{
    public YaldaVida yaldaVida;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = yaldaVida.life / yaldaVida.maxLife;
    }
}
