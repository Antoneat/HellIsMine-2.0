using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameEvents : MonoBehaviour
{
    public static GameEvents currentGEvent;

    private void Awake()
    {
        currentGEvent = this;
    }

    public event Action<int> combatTriggerExit;

    public void StartCombatTriggerExit(int id)
    {
        if (combatTriggerExit != null)
        {
            combatTriggerExit(id);
        }
    }

}
