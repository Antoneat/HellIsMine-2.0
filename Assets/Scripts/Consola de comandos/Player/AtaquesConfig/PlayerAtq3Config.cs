using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class PlayerAtq3Config : MonoBehaviour
{
    [Header("Referencias")]
    public HitboxDmg hitboxDmg;
    public GameObject atq3;

    [Header("Textos")]
    public TMP_Text text_dmg;
    public TMP_Text text_modifier;

    void Start()
    {
        text_dmg.text = "Dmg3:" + hitboxDmg.dmg;
        text_modifier.text = "Modifier3:" + hitboxDmg.modifier;
    }

    // Update is called once per frame
    void Update()
    {
        atq3 = GameObject.FindGameObjectWithTag("Atq3");

        hitboxDmg = atq3.GetComponent<HitboxDmg>();
    }


    #region Damage
    public void MenosUnoDmg()
    {
        hitboxDmg.dmg--;

        text_dmg.text = "Dmg3:" + hitboxDmg.dmg;
    }
    public void ChangeDmg(string dmg)
    {
        float dmgNew = Int32.Parse(dmg);
        hitboxDmg.dmg = dmgNew;

        text_dmg.text = "Dmg3:" + dmg;
    }

    public void MasUnoDmg()
    {
        hitboxDmg.dmg++;

        text_dmg.text = "Dmg3:" + hitboxDmg.dmg;
    }
    #endregion

    #region Modifier
    public void MenosUnoModifier()
    {
        hitboxDmg.modifier--;

        text_modifier.text = "Modifier3:" + hitboxDmg.modifier;
    }
    public void ChangeModifier(string modifier)
    {
        float modifierNew = Int32.Parse(modifier);
        hitboxDmg.modifier = modifierNew;

        text_modifier.text = "Modifier3:" + modifier;
    }

    public void MasUnoModifier()
    {
        hitboxDmg.modifier++;

        text_modifier.text = "Modifier3:" + hitboxDmg.modifier;
    }
    #endregion
}
