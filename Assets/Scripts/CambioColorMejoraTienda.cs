using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CambioColorMejoraTienda : MonoBehaviour
{
    private PlayerDmg playerDmg;

    public EstadoMejora[] estadoMejoras;
    public Image[] imageGeneral;

    public bool CA1, CA2, CT1, CT2, CP;
    public bool DO, DA1, DA2, DP1, DP2, DMDM;

    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
    }

    void Update()
    {
        for (int i = 0; i < imageGeneral.Length; i++)
        {
            if(playerDmg.actualSouls < estadoMejoras[i].price)
            {
                if(estadoMejoras[i].bought == false)
                {   
                    imageGeneral[i].sprite = Resources.Load<Sprite>("ImgTienda/BolaUnvailable");
                    Debug.Log("No se puede comprar");
                }
            }
        }


        for (int i = 0; i < imageGeneral.Length; i++)
        {   
            if(playerDmg.actualSouls >= estadoMejoras[i].price)
            {
                if(estadoMejoras[i].bought == false)
                {
                    imageGeneral[i].sprite = Resources.Load<Sprite>("ImgTienda/BolaAvailable");
                    Debug.Log("Ya se puede comprar");
                }   
            }     
        }

        if(CA1 == true)
        {
            if(estadoMejoras[0].bought == true && estadoMejoras[0].attackUpgrade == true)
            {
                imageGeneral[0].sprite = Resources.Load<Sprite>("ImgTienda/BolaAttack");
                Debug.Log("Habilidad comprada");
            }
        }
        if(CA2 == true)
        {
            if(estadoMejoras[1].bought == true && estadoMejoras[1].attackUpgrade == true)
            {
                imageGeneral[1].sprite = Resources.Load<Sprite>("ImgTienda/BolaAttack");
            }
        }
        if(CT1 == true)
        {
            if(estadoMejoras[2].bought == true && estadoMejoras[2].attackUpgrade == true)
            {
                imageGeneral[2].sprite = Resources.Load<Sprite>("ImgTienda/BolaAttack");
            }
        }
        if(CT2 == true)
        {
            if(estadoMejoras[3].bought == true && estadoMejoras[3].attackUpgrade == true)
            {
                imageGeneral[3].sprite = Resources.Load<Sprite>("ImgTienda/BolaAttack");
            }
        }
        if(CP == true)
        {
            if(estadoMejoras[4].bought == true && estadoMejoras[4].attackUpgrade == true)
            {
                imageGeneral[4].sprite = Resources.Load<Sprite>("ImgTienda/BolaAttack");
            }
        }


        if(DO == true)
        {
            if(estadoMejoras[5].bought == true && estadoMejoras[5].dashUpgrade == true)
            {
                imageGeneral[5].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
        if(DA1 == true)
        {
            if(estadoMejoras[6].bought == true && estadoMejoras[6].dashUpgrade == true)
            {
                imageGeneral[6].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
        if(DA2 == true)
        {
            if(estadoMejoras[7].bought == true && estadoMejoras[7].dashUpgrade == true)
            {
                imageGeneral[7].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
        if(DP1 == true)
        {
            if(estadoMejoras[8].bought == true && estadoMejoras[8].dashUpgrade == true)
            {
                imageGeneral[8].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
        if(DP2 == true)
        {
            if(estadoMejoras[9].bought == true && estadoMejoras[9].dashUpgrade == true)
            {
                imageGeneral[9].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
        if(DMDM == true)
        {
            if(estadoMejoras[10].bought == true && estadoMejoras[10].dashUpgrade == true)
            {
                imageGeneral[10].sprite = Resources.Load<Sprite>("ImgTienda/BolaDash");
            }
        }
    }
}
