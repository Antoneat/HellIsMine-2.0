using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName ="Habilidades Verdugo/Teleport", order =3)]
public class TeleportToPlayerSO : Habilidad_SO
{
    public override void Activate(GameObject parent)
    {
        Verdugo_Controller _verdugoController = parent.GetComponent<Verdugo_Controller>();
        _verdugoController.teleportToPlayer = true;
    }
}

