using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[CreateAssetMenu(fileName = "ManagerBuscadorSO", menuName = "Data/VariablesBuscador", order = 1)]
public class VariableManagerBuscador : ScriptableObject
{
    public BuscadorController buscadorController;
    public EnemyLife enemyLife;
    public EnemyHitbox enemyHitbox;

    public float awareAI_SO;
    public float atkRange_SO;

    public float life_SO;
    public float healAmount_SO;
    public int soulAmount_SO;

    public float dmg_SO;

    public Action OnValueChange;

    public void Awake()
    {
        awareAI_SO = buscadorController.awareAI;
        atkRange_SO = buscadorController.atkRange;

        life_SO = enemyLife.life;
        healAmount_SO = enemyLife.healAmount;
        soulAmount_SO = enemyLife.soulAmount;

        dmg_SO = enemyHitbox.dmg;
    }

    public void OnValidate()
    {
        awareAI_SO = buscadorController.awareAI;
        atkRange_SO = buscadorController.atkRange;

        life_SO = enemyLife.life;
        healAmount_SO = enemyLife.healAmount;
        soulAmount_SO = enemyLife.soulAmount;

        dmg_SO = enemyHitbox.dmg;
    }
}
