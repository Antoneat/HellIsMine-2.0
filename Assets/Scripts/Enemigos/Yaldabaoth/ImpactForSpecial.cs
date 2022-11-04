using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpactForSpecial : MonoBehaviour
{
    public YaldaAtkEspecial yaldaAtkEspecial;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            yaldaAtkEspecial.impactFirtsAttack = true;
        }
    }
}
