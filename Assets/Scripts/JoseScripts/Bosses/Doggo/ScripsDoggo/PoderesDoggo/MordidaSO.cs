using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "PoderesDoggo/Mordida", order = 1)]
public class MordidaSO : Habilidad_SO
{
    public override void Activate(GameObject parent)
    {
        DoggoController _doggoController = parent.GetComponent<DoggoController>();
        _doggoController.lanzarMordida = true;
    }
}
