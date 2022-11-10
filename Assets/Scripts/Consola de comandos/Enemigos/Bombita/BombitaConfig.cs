using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class BombitaConfig : MonoBehaviour
{
    public VariableManagerBombita managerBombita;

    [Header("variables")]
    public float awareAI_Conf;
    public float atkRange_Conf;

    public float life_Config;
    public float healAmount_Config;

    public float dmg_Config;

    [Header("Textos")]
    public TMP_Text text_AwareAi;
    public TMP_Text text_AtqRange;

    public TMP_Text text_Life;
    public TMP_Text text_HealtAmount;

    public TMP_Text text_Dmg;

    private void Awake()
    {
        awareAI_Conf = managerBombita.awareAI_SO;
        atkRange_Conf = managerBombita.atkRange_SO;

        life_Config = managerBombita.life_SO;
        healAmount_Config = managerBombita.healAmount_SO;

        dmg_Config = managerBombita.dmg_SO;
    }

    public void Start()
    {
        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        text_AtqRange.text = "AtqRange:" + atkRange_Conf;

        text_Life.text = "Vida:" + life_Config;
        text_HealtAmount.text = "Cura:" + healAmount_Config;

        text_Dmg.text = "Daño:" + dmg_Config;
    }

    public void Update()
    {
        managerBombita.awareAI_SO = awareAI_Conf;
        managerBombita.atkRange_SO = atkRange_Conf;

        managerBombita.life_SO = life_Config;
        managerBombita.healAmount_SO = healAmount_Config;

        managerBombita.dmg_SO = dmg_Config;
    }


    #region AwareAi
    public void MenosUnoAwareAi()
    {
        awareAI_Conf--;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerBombita.awareAI_SO = awareAI_Conf;
    }
    public void ChangeAwareAI(string awareAI)
    {
        int awareAINew = Int32.Parse(awareAI);
        awareAI_Conf = awareAINew;

        text_AwareAi.text = "AwareAI:" + awareAI;

        managerBombita.awareAI_SO = awareAINew;
    }

    public void MasUnoAwareAi()
    {
        awareAI_Conf++;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerBombita.awareAI_SO = awareAI_Conf;
    }
    #endregion

    #region Ataque Range
    public void MenosUnoAtqRange()
    {
        atkRange_Conf--;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerBombita.atkRange_SO = atkRange_Conf;
    }
    public void ChangeAtqRange(string atqRange)
    {
        int atqRangeNew = Int32.Parse(atqRange);
        atkRange_Conf = atqRangeNew;

        text_AtqRange.text = "AtqRange:" + atqRange;

        managerBombita.atkRange_SO = atqRangeNew;
    }

    public void MasUnoAtqRange()
    {
        atkRange_Conf++;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerBombita.atkRange_SO = atkRange_Conf;
    }
    #endregion

    #region Vida
    public void MenosUnoLife()
    {
        life_Config--;

        text_Life.text = "Vida:" + life_Config;
        managerBombita.life_SO = life_Config;

        managerBombita.OnValueChange.Invoke();
    }
    public void ChangeLife(string life)
    {
        int lifeNew = Int32.Parse(life);
        life_Config = lifeNew;

        text_Life.text = "Vida:" + life;

        managerBombita.life_SO = life_Config = lifeNew;

        managerBombita.OnValueChange?.Invoke();
    }

    public void MasUnoLife()
    {
        life_Config++;

        text_Life.text = "Vida:" + life_Config;
        managerBombita.life_SO = life_Config;

        managerBombita.OnValueChange.Invoke();
    }
    #endregion

    #region HealtAmount
    public void MenosUnoHealtAmount()
    {
        healAmount_Config--;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerBombita.healAmount_SO = healAmount_Config;

        managerBombita.OnValueChange.Invoke();
    }
    public void ChangeHealtAmount(string healAmount)
    {
        int healAmountNew = Int32.Parse(healAmount);
        healAmount_Config = healAmountNew;

        text_HealtAmount.text = "Cura:" + healAmount;

        managerBombita.healAmount_SO = healAmount_Config = healAmountNew;

        managerBombita.OnValueChange?.Invoke();
    }

    public void MasUnoHealtAmount()
    {
        healAmount_Config++;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerBombita.healAmount_SO = healAmount_Config;

        managerBombita.OnValueChange.Invoke();
    }
    #endregion

    #region DMG
    public void MenosUnoDmg()
    {
        dmg_Config--;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerBombita.dmg_SO = dmg_Config;

        managerBombita.OnValueChange.Invoke();
    }
    public void ChangeDmg(string dmg)
    {
        int dmgNew = Int32.Parse(dmg);
        dmg_Config = dmgNew;

        text_Dmg.text = "Daño:" + dmg;

        managerBombita.dmg_SO = dmg_Config = dmgNew;

        managerBombita.OnValueChange?.Invoke();
    }

    public void MasUnoDmg()
    {
        dmg_Config++;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerBombita.dmg_SO = dmg_Config;

        managerBombita.OnValueChange.Invoke();
    }
    #endregion
}
