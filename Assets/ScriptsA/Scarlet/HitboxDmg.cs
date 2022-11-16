using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitboxDmg : MonoBehaviour
{
    public float dmg; // Cambia dependiendo de su ataque.
    public float modifier; // Igualar a 1 cuando no tenga upgrades.

    public TiendaInteracion tiendaInteracion;
    public PlayerAttackCombo playerAttackCombo;

    public PlayerDash playerDash;

    private void Start()
    {
        tiendaInteracion = GameObject.FindGameObjectWithTag("CANVAS").GetComponent<TiendaInteracion>();
        playerAttackCombo = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttackCombo>();
        playerDash = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDash>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Bombita2"))
        {
            other.gameObject.GetComponent<AgitadorLife>().TakeDmg(dmg * modifier);
        }

        if (other.gameObject.CompareTag("Buscador"))
        {
            other.gameObject.GetComponent<BuscadorLife>().TakeDmg(dmg * modifier);
        }

        if (other.gameObject.CompareTag("Verdugo"))
        {
            other.gameObject.GetComponent<VerdugoLife>().TakeDmg(dmg * modifier);
        }

        if (other.gameObject.CompareTag("Yalda"))
        {
            other.gameObject.GetComponent<YaldaVida>().TakeDmg(dmg * modifier);
        }
    }
 
 
    #region Metodos para mejorar en tienda

    public void MejorasAtaques()
    {
        if(tiendaInteracion.CA1 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerAttackCombo.CortesAgiles1 = true;  
        }   
        
        if(tiendaInteracion.CA2 == true && playerAttackCombo.CortesAgiles1 ==  true)
        {
            // Quitarle cierta cantidad de almas.
            playerAttackCombo.CortesAgiles2 = true;
        } 
        
        if(tiendaInteracion.CT1 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerAttackCombo.CortesTenaces1 = true;
        } 
        
        if(tiendaInteracion.CT2 == true && playerAttackCombo.CortesTenaces1 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerAttackCombo.CortesTenaces2 = true;
        } 
        
        if(tiendaInteracion.CP == true && playerAttackCombo.CortesAgiles2 == true && playerAttackCombo.CortesTenaces2 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerAttackCombo.CortesPerfectos = true;
        } 




        if(tiendaInteracion.DO == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.DashOfensivo = true;
        }


        if(tiendaInteracion.DA1 == true && playerDash.DashOfensivo == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.DashAfilado1 = true;
        }
        if(tiendaInteracion.DA2 == true && playerDash.DashAfilado1 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.DashAfilado2 = true;
        }


        if(tiendaInteracion.DP1 == true && playerDash.DashOfensivo == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.DashPotente1 = true;
        }
        if(tiendaInteracion.DP2 == true && playerDash.DashPotente1 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.DashPotente2 = true;
        }


        if(tiendaInteracion.DMDM == true && playerDash.DashAfilado2 == true && playerDash.DashPotente2 == true)
        {
            // Quitarle cierta cantidad de almas.
            playerDash.MaestroDelMovimieto = true;
        }
    }

    #endregion
}
