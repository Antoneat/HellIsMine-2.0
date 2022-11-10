using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ValoresBuscador : MonoBehaviour
{
    BuscadorLife buscadorLife;
    BuscadorController buscadorController;


    public VariableManagerBuscador managerBuscador;

    [Header("Buscador Cotroller")]
    public float awareAI_Val;
    public float atkRange_Val;

    [Header("Buscador Life")]
    public float life_Val;
    public float healAmount_Val;
    public int soulAmount_Val;

    public float dmg_SO;

    void Awake()
    {
        buscadorLife = GetComponentInChildren<BuscadorLife>();
        buscadorController = GetComponentInChildren<BuscadorController>();

        awareAI_Val = buscadorController.awareAI;
        atkRange_Val = buscadorController.atkRange;

        life_Val = buscadorLife.life;
        healAmount_Val = buscadorLife.healAmount;
        soulAmount_Val = buscadorLife.soulAmount;
    }

    void Start()
    {
        ChangeLifeBuscador();
        ChangeHealtAmountBucador();
        ChangeSoulAmountBuscador();

        managerBuscador.OnValueChange += ChangeLifeBuscador;
        managerBuscador.OnValueChange += ChangeHealtAmountBucador;
        managerBuscador.OnValueChange += ChangeSoulAmountBuscador;
    }

    void ChangeLifeBuscador()
    {
        buscadorLife.life = managerBuscador.life_SO;
    }

    void ChangeHealtAmountBucador()
    {
        buscadorLife.healAmount = managerBuscador.healAmount_SO;
    }

    void ChangeSoulAmountBuscador()
    {
        buscadorLife.soulAmount = managerBuscador.soulAmount_SO;
    }

    private void OnDestroy()
    {
        managerBuscador.OnValueChange -= ChangeLifeBuscador;
        managerBuscador.OnValueChange -= ChangeHealtAmountBucador;
        managerBuscador.OnValueChange -= ChangeSoulAmountBuscador;
    }
}
