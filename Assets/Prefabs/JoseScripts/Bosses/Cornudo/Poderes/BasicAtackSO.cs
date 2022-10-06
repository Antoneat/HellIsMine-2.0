using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Habilidades Verdugo/BasicAtack", order = 1)]

public class BasicAtackSO : Habilidad_SO
{
    public override void Activate(GameObject parent)
    {
        Verdugo_Controller _verdugoController = parent.GetComponent<Verdugo_Controller>();
        _verdugoController.basicAttack = true;
    }
}
