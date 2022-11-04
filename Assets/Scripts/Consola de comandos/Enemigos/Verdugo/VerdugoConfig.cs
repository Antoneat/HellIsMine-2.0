using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class VerdugoConfig : MonoBehaviour
{
    public VariableManagerVerdugo managerVerdugo;

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
        awareAI_Conf = managerVerdugo.awareAI_SO;
        atkRange_Conf = managerVerdugo.atkRange_SO;

        life_Config = managerVerdugo.life_SO;
        healAmount_Config = managerVerdugo.healAmount_SO;
        soulAmount_Config = managerVerdugo.soulAmount_SO;

        dmg_Config = managerVerdugo.dmg_SO;
    }

    public void Start()
    {
        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        text_AtqRange.text = "AtqRange:" + atkRange_Conf;

        text_Life.text = "Vida:" + life_Config;
        text_HealtAmount.text = "Cura:" + healAmount_Config;
        text_SoulAmount.text = "Almas:" + soulAmount_Config;

        text_Dmg.text = "Daño:" + dmg_Config;

    }

    public void Update()
    {
        managerVerdugo.awareAI_SO = awareAI_Conf;
        managerVerdugo.atkRange_SO = atkRange_Conf;

        managerVerdugo.life_SO = life_Config;
        managerVerdugo.healAmount_SO = healAmount_Config;
        managerVerdugo.soulAmount_SO = soulAmount_Config;

        managerVerdugo.dmg_SO = dmg_Config;
    }


    #region AwareAi
    public void MenosUnoAwareAi()
    {
        awareAI_Conf--;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerVerdugo.awareAI_SO = awareAI_Conf;
    }
    public void ChangeAwareAI(string awareAI)
    {
        int awareAINew = Int32.Parse(awareAI);
        awareAI_Conf = awareAINew;

        text_AwareAi.text = "AwareAI:" + awareAI;

        managerVerdugo.awareAI_SO = awareAINew;
    }

    public void MasUnoAwareAi()
    {
        awareAI_Conf++;

        text_AwareAi.text = "AwareAI:" + awareAI_Conf;
        managerVerdugo.awareAI_SO = awareAI_Conf;
    }
    #endregion

    #region Ataque Range
    public void MenosUnoAtqRange()
    {
        atkRange_Conf--;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerVerdugo.atkRange_SO = atkRange_Conf;
    }
    public void ChangeAtqRange(string atqRange)
    {
        int atqRangeNew = Int32.Parse(atqRange);
        atkRange_Conf = atqRangeNew;

        text_AtqRange.text = "AtqRange:" + atqRange;

        managerVerdugo.atkRange_SO = atqRangeNew;
    }

    public void MasUnoAtqRange()
    {
        atkRange_Conf++;

        text_AtqRange.text = "AtqRange:" + atkRange_Conf;
        managerVerdugo.atkRange_SO = atkRange_Conf;
    }
    #endregion

    #region Vida
    public void MenosUnoLife()
    {
        life_Config--;

        text_Life.text = "Vida:" + life_Config;
        managerVerdugo.life_SO = life_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    public void ChangeLife(string life)
    {
        int lifeNew = Int32.Parse(life);
        life_Config = lifeNew;

        text_Life.text = "Vida:" + life;

        managerVerdugo.life_SO = life_Config = lifeNew;

        managerVerdugo.OnValueChange?.Invoke();
    }

    public void MasUnoLife()
    {
        life_Config++;

        text_Life.text = "Vida:" + life_Config;
        managerVerdugo.life_SO = life_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    #endregion

    #region HealtAmount
    public void MenosUnoHealtAmount()
    {
        healAmount_Config--;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerVerdugo.healAmount_SO = healAmount_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    public void ChangeHealtAmount(string healAmount)
    {
        int healAmountNew = Int32.Parse(healAmount);
        healAmount_Config = healAmountNew;

        text_HealtAmount.text = "Cura:" + healAmount;

        managerVerdugo.healAmount_SO = healAmount_Config = healAmountNew;

        managerVerdugo.OnValueChange?.Invoke();
    }

    public void MasUnoHealtAmount()
    {
        healAmount_Config++;

        text_HealtAmount.text = "Cura:" + healAmount_Config;
        managerVerdugo.healAmount_SO = healAmount_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    #endregion

    #region SoulAmount
    public void MenosUnoSoulAmount()
    {
        soulAmount_Config--;

        text_SoulAmount.text = "Almas:" + soulAmount_Config;
        managerVerdugo.soulAmount_SO = soulAmount_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    public void ChangeSoulAmount(string soulAmount)
    {
        int soulAmountNew = Int32.Parse(soulAmount);
        healAmount_Config = soulAmountNew;

        text_SoulAmount.text = "Almas:" + soulAmount;

        managerVerdugo.soulAmount_SO = soulAmount_Config = soulAmountNew;

        managerVerdugo.OnValueChange?.Invoke();
    }

    public void MasUnoSoulAmount()
    {
        soulAmount_Config++;

        text_SoulAmount.text = "Almas:" + soulAmount_Config;
        managerVerdugo.soulAmount_SO = soulAmount_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    #endregion

    #region DMG
    public void MenosUnoDmg()
    {
        dmg_Config--;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerVerdugo.dmg_SO = dmg_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    public void ChangeDmg(string dmg)
    {
        int dmgNew = Int32.Parse(dmg);
        dmg_Config = dmgNew;

        text_Dmg.text = "Daño:" + dmg;

        managerVerdugo.dmg_SO = dmg_Config = dmgNew;

        managerVerdugo.OnValueChange?.Invoke();
    }

    public void MasUnoDmg()
    {
        dmg_Config++;

        text_Dmg.text = "Daño:" + dmg_Config;
        managerVerdugo.dmg_SO = dmg_Config;

        managerVerdugo.OnValueChange.Invoke();
    }
    #endregion
}
