using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BarraVidaVerdugo : MonoBehaviour
{
    public EnemyLife enemyLife;

    public Image barraDeVida;

    void Update()
    {
        barraDeVida.fillAmount = enemyLife.life / enemyLife.maxLife;
    }
}
