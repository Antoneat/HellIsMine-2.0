using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class BuscadorConfig : MonoBehaviour
{
    public VariableManagerBuscador managerBuscador;
    public ValoresBuscador valoresBuscador;

    [Header("variables")]
    public float awareAI_Conf;
    public float atkRange_Conf;

    public float life_Config;
    public float healAmount_Config;
    public int soulAmount_Config;

    public float dmg_Config;

    [Header("Textos")]
    public TMP_Text text_AwareAi;
    public TMP_Text text_AtqRange;

    public TMP_Text text_Life;
    public TMP_Text text_HealtAmount;
    public TMP_Text text_SoulAmount;

    public TMP_Text text_Dmg;

    private void Awake()
    {
        awareAI_Conf = managerBuscador.awareAI_SO;
        atkRange_Conf = managerBuscador.atkRange_SO;

        life_Config = managerBuscador.life_SO;
        healAmount_Config = managerBuscador.healAmount_SO;
        soulAmount_Config = managerBuscador.soulAmount_SO;

        dmg_Config = managerBuscador.dmg_SO;
    }

    public void Start()
    {
        valoresBuscador = GameObject.FindGameObjectWithTag("Buscador").GetComponent<ValoresBuscador>();

        text_AwareAi.text = "AwareAI:" + valoresBuscador.awareAI_Val;
        text_AtqRange.text = "AtqRange:" + valoresBuscador.atkRange_Val;

        text_Life.text = "Vida:" + valoresBuscador.life_Val;
        text_HealtAmount.text = "Cura:" + valoresBuscador.healAmount_Val;
        text_SoulAmount.text = "Almas:" + valoresBuscador.soulAmount_Val;

        text_Dmg.text = "Daño:" + dmg_Config;
    }

    public void Update()
    {
        valoresBuscador = GameObject.FindGameObjectWithTag("Buscador").GetComponent<ValoresBuscador>();

        managerBuscador.awareAI_SO = awareAI_Conf;
        managerBuscador.atkRange_SO = atkRange_Conf;

        managerBuscador.life_SO = life_Config;
        managerBuscador.healAmount_SO = healAmount_Config;
        managerBuscador.soulAmount_SO = soulAmount_Config;

        managerBuscador.dmg_SO = dmg_Config;
    }


    #region AwareAi
    public void MenosUnoAwareAi()
    {
        awareAI_Conf--;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerBuscador.awareAI_SO = awareAI_Conf;
    }
    public void ChangeAwareAI(string awareAI)
    {
        int awareAINew = Int32.Parse(awareAI);
        awareAI_Conf = awareAINew;

        text_AwareAi.text = "AwareAI:" + awareAI;

        managerBuscador.awareAI_SO = awareAINew;
    }
    public void MasUnoAwareAi()
    {
        awareAI_Conf++;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerBuscador.awareAI_SO = awareAI_Conf;
    }
    #endregion

    #region Ataque Range
    public void MenosUnoAtqRange()
    {
        atkRange_Conf--;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerBuscador.atkRange_SO = atkRange_Conf;
    }
    public void ChangeAtqRange(string atqRange)
    {
        int atqRangeNew = Int32.Parse(atqRange);
        atkRange_Conf = atqRangeNew;

        text_AtqRange.text = "AtqRange:" + atqRange;

        managerBuscador.atkRange_SO = atqRangeNew;
    }

    public void MasUnoAtqRange()
    {
        atkRange_Conf++;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerBuscador.atkRange_SO = atkRange_Conf;
    }
    #endregion

    #region Vida
    public void MenosUnoLife()
    {
        life_Config--;

        text_Life.text = "Vida:" + life_Config;
        managerBuscador.life_SO = life_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    public void ChangeLife(string life)
    {
        int lifeNew = Int32.Parse(life);
        life_Config = lifeNew;

        text_Life.text = "Vida:" + life;

        managerBuscador.life_SO = life_Config = lifeNew;

        managerBuscador.OnValueChange?.Invoke();
    }

    public void MasUnoLife()
    {
        life_Config++;

        text_Life.text = "Vida:" + life_Config;
        managerBuscador.life_SO = life_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    #endregion
    
    #region HealtAmount
    public void MenosUnoHealtAmount()
    {
        healAmount_Config--;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerBuscador.healAmount_SO = healAmount_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    public void ChangeHealtAmount(string healAmount)
    {
        int healAmountNew = Int32.Parse(healAmount);
        healAmount_Config = healAmountNew;

        text_HealtAmount.text = "Cura:" + healAmount;

        managerBuscador.healAmount_SO = healAmount_Config = healAmountNew;

        managerBuscador.OnValueChange?.Invoke();
    }

    public void MasUnoHealtAmount()
    {
        healAmount_Config++;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerBuscador.healAmount_SO = healAmount_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    #endregion
    
    #region SoulAmount
    public void MenosUnoSoulAmount()
    {
        soulAmount_Config--;

        text_SoulAmount.text = "Almas:" + soulAmount_Config;
        managerBuscador.soulAmount_SO = soulAmount_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    public void ChangeSoulAmount(string soulAmount)
    {
        int soulAmountNew = Int32.Parse(soulAmount);
        healAmount_Config = soulAmountNew;

        text_SoulAmount.text = "Almas:" + soulAmount;

        managerBuscador.soulAmount_SO = soulAmount_Config = soulAmountNew;

        managerBuscador.OnValueChange?.Invoke();
    }

    public void MasUnoSoulAmount()
    {
        soulAmount_Config++;

        text_SoulAmount.text = "Almas:" + soulAmount_Config;
        managerBuscador.soulAmount_SO = soulAmount_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    #endregion
    
    #region DMG
    public void MenosUnoDmg()
    {
        dmg_Config--;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerBuscador.dmg_SO = dmg_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    public void ChangeDmg(string dmg)
    {
        int dmgNew = Int32.Parse(dmg);
        dmg_Config = dmgNew;

        text_Dmg.text = "Daño:" + dmg;

        managerBuscador.dmg_SO = dmg_Config = dmgNew;

        managerBuscador.OnValueChange?.Invoke();
    }

    public void MasUnoDmg()
    {
        dmg_Config++;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerBuscador.dmg_SO = dmg_Config;

        managerBuscador.OnValueChange.Invoke();
    }
    #endregion
}
