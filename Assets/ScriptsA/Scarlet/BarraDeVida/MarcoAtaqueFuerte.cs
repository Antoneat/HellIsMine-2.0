using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MarcoAtaqueFuerte : MonoBehaviour
{
    public Image marcoAtaqueFuerte;

    public PlayerHardAttack playerHardAttack;

    void Update()
    {
        marcoAtaqueFuerte.fillAmount = playerHardAttack.cooldown / playerHardAttack.maxCooldown;
    }
}
