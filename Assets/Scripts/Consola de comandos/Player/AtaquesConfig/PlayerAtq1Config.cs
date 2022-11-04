using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class PlayerAtq1Config : MonoBehaviour
{
    [Header("Referencias")]
    public HitboxDmg hitboxDmg;
    public GameObject atq1;

    [Header("Textos")]
    public TMP_Text text_dmg;
    public TMP_Text text_modifier;

    void Start()
    {
        text_dmg.text = "Dmg1:" + hitboxDmg.dmg;
        text_modifier.text = "Modifier1:" + hitboxDmg.modifier;
    }

    // Update is called once per frame
    void Update()
    {
        atq1 = GameObject.FindGameObjectWithTag("Atq1");

        hitboxDmg = atq1.GetComponent<HitboxDmg>();
    }


    #region Damage
    public void MenosUnoDmg()
    {
        hitboxDmg.dmg--;

        text_dmg.text = "Dmg1:" + hitboxDmg.dmg;
    }
    public void ChangeDmg(string dmg)
    {
        float dmgNew = Int32.Parse(dmg);
        hitboxDmg.dmg = dmgNew;

        text_dmg.text = "Dmg1:" + dmg;
    }

    public void MasUnoDmg()
    {
        hitboxDmg.dmg++;

        text_dmg.text = "Dmg1:" + hitboxDmg.dmg;
    }
    #endregion
    
    #region Modifier
    public void MenosUnoModifier()
    {
        hitboxDmg.modifier--;

        text_modifier.text = "Modifier1:" + hitboxDmg.modifier;
    }
    public void ChangeModifier(string modifier)
    {
        float modifierNew = Int32.Parse(modifier);
        hitboxDmg.modifier = modifierNew;

        text_modifier.text = "Modifier1:" + modifier;
    }

    public void MasUnoModifier()
    {
        hitboxDmg.modifier++;

        text_modifier.text = "Modifier1:" + hitboxDmg.modifier;
    }
    #endregion
}
