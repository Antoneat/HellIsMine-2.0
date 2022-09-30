using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Habilidades Verdugo/LanzaAttack", order = 2)]
public class LanzasAttackSO : Habilidad_SO
{
    public override void Activate(GameObject parent)
    {
        Verdugo_Controller _verdugoController = parent.GetComponent<Verdugo_Controller>();
        _verdugoController.lanzaAttack = true;
    }
}
