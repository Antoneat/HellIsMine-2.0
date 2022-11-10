using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[CreateAssetMenu(fileName = "ManagerBuscadorSO", menuName = "Data/VariablesBuscador", order = 1)]
public class VariableManagerBuscador : ScriptableObject
{
    public ValoresBuscador valoresBuscador;

    public float awareAI_SO;
    public float atkRange_SO;

    public float life_SO;
    public float healAmount_SO;
    public int soulAmount_SO;

    public float dmg_SO;

    public Action OnValueChange;

    public void Awake()
    {
        awareAI_SO = valoresBuscador.awareAI_Val;
        atkRange_SO = valoresBuscador.atkRange_Val;

        life_SO = valoresBuscador.life_Val;
        healAmount_SO = valoresBuscador.healAmount_Val;
        soulAmount_SO = valoresBuscador.soulAmount_Val;
    }

    public void OnValidate()
    {
        awareAI_SO = valoresBuscador.awareAI_Val;
        atkRange_SO = valoresBuscador.atkRange_Val;

        life_SO = valoresBuscador.life_Val;
        healAmount_SO = valoresBuscador.healAmount_Val;
        soulAmount_SO = valoresBuscador.soulAmount_Val;
    }
}
