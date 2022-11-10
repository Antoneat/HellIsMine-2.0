using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[CreateAssetMenu(fileName = "ManagerBombitaSO", menuName = "Data/VariablesBombita", order = 1)]
public class VariableManagerBombita : ScriptableObject
{
    public BombController bombController;
    public AgitadorLife agitadorLife;
    //public EnemyHitbox enemyHitbox;

    //public GameObject prefabBombita;

    //public Transform transformRangoExplosion; //los 3 valores deben ser modificados por rangoExplosion

    public float awareAI_SO;
    public float atkRange_SO;

    public float life_SO;
    public float healAmount_SO;

    public float dmg_SO;

    public Action OnValueChange;

    //public float rangoExplosion_SO;
    public void Awake()
    {
        //transformRangoExplosion = prefabBombita.GetComponentInChildren<Transform>();

        //rangoExplosion_SO = transformRangoExplosion.localScale.x;

        awareAI_SO = bombController.awareAI;
        atkRange_SO = bombController.atkRange;

        life_SO = agitadorLife.life;
        healAmount_SO = agitadorLife.healAmount;

        //dmg_SO = enemyHitbox.dmg;
    }

    public void OnValidate()
    {
        //rangoExplosion_SO = transformRangoExplosion.localScale.x;

        awareAI_SO = bombController.awareAI;
        atkRange_SO = bombController.atkRange;

        life_SO = agitadorLife.life;
        healAmount_SO = agitadorLife.healAmount;

        //dmg_SO = enemyHitbox.dmg;
    }
}
