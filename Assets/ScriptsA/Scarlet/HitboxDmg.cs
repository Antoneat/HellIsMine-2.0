using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitboxDmg : MonoBehaviour
{
    public float dmg; // Cambia dependiendo de su ataque.
    public float modifier; // Igualar a 1 cuando no tenga upgrades.

    public TiendaInteracion tiendaInteracion;
    public CambioColorMejoraTienda cambioColorMejoraTienda;
    public EstadoMejora[] estadoMejoras;
    public PlayerAttackCombo playerAttackCombo;

    public PlayerDash playerDash;
    public PlayerDmg playerDmg;
    //public AudioSource Source;
    //public AudioClip Comprado;

    private void Start()
    {
        tiendaInteracion = GameObject.FindGameObjectWithTag("CANVAS").GetComponent<TiendaInteracion>();
        playerAttackCombo = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttackCombo>();
        playerDash = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDash>();
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
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

        if (other.gameObject.CompareTag("Samael"))
        {
            other.gameObject.GetComponent<SamaVida>().TakeDmg(dmg * modifier);
        }
    }
 
 
    #region Metodos para mejorar en tienda

    public void MejorasAtaques()
    {
        if(tiendaInteracion.CA1 == true && playerDmg.actualSouls > 30 && playerAttackCombo.CortesTenaces1 == false) // Cortes agiles 1
        {
            playerDmg.actualSouls -= estadoMejoras[0].price; //revisar precio
            //cambioColorMejoraTienda.CA1 = true;
            //estadoMejoras[0].bought = true;
            //Source.PlayOneShot(Comprado);
            playerAttackCombo.CortesAgiles1 = true; 
            Debug.Log("Mejora Aplicada CA1"); 
            tiendaInteracion.CA1 = false;
        }

        
        if(tiendaInteracion.CA2 == true && playerAttackCombo.CortesAgiles1 ==  true && playerDmg.actualSouls > 30) // Cortes agiles 2
        {
            playerDmg.actualSouls -= estadoMejoras[1].price; //revisar precio
            //cambioColorMejoraTienda.CA2 = true;
            //estadoMejoras[1].bought = true;
            //Source.PlayOneShot(Comprado);
            playerAttackCombo.CortesAgiles2 = true;
            Debug.Log("Mejora Aplicada CA2");
            tiendaInteracion.CA2 = false;
        } 
        
        if(tiendaInteracion.CT1 == true && playerDmg.actualSouls > 30 && playerAttackCombo.CortesAgiles1 == false) // Cortes tenaces 1
        {
            playerDmg.actualSouls -= estadoMejoras[2].price; //revisar precio
            //cambioColorMejoraTienda.CT1 = true;
            //estadoMejoras[2].bought = true;
            //Source.PlayOneShot(Comprado);
            playerAttackCombo.CortesTenaces1 = true;
            Debug.Log("Mejora Aplicada CT1");
            tiendaInteracion.CT1 = false;
        } 
        
        if(tiendaInteracion.CT2 == true && playerAttackCombo.CortesTenaces1 == true && playerDmg.actualSouls > 30) // Cortes tenaces 2
        {
            playerDmg.actualSouls -= estadoMejoras[3].price; //revisar precio
            //cambioColorMejoraTienda.CT2 = true;
            //estadoMejoras[3].bought = true;
            //Source.PlayOneShot(Comprado);
            playerAttackCombo.CortesTenaces2 = true;
            Debug.Log("Mejora Aplicada CT2");
            tiendaInteracion.CT2 = false;
        } 
        
        if(tiendaInteracion.CP == true && playerAttackCombo.CortesAgiles2 == true && playerDmg.actualSouls > 30 || tiendaInteracion.CP == true && playerAttackCombo.CortesTenaces2 == true  && playerDmg.actualSouls > 30) // Cortes perfectos
        {
            playerDmg.actualSouls -= estadoMejoras[4].price; //revisar precio
            //cambioColorMejoraTienda.CP = true;
            //estadoMejoras[4].bought = true;
            //Source.PlayOneShot(Comprado);
            playerAttackCombo.CortesPerfectos = true;
            Debug.Log("Mejora Aplicada CP");
            tiendaInteracion.CP = false;
        } 




        if(tiendaInteracion.DO == true && playerDmg.actualSouls > 30) //dash ofensivo
        {
            playerDmg.actualSouls -= estadoMejoras[5].price; //revisar precio
            //cambioColorMejoraTienda.DO = true;
            //estadoMejoras[5].bought = true; 
            playerDash.DashOfensivo = true;
            Debug.Log("Mejora Aplicada DO");
            tiendaInteracion.DO = false;
        }


        if(tiendaInteracion.DA1 == true && playerDash.DashOfensivo == true && playerDmg.actualSouls > 30 && playerDash.DashPotente1 == false) //dash afilado 1
        {
            playerDmg.actualSouls -= estadoMejoras[6].price; //revisar precio
            //cambioColorMejoraTienda.DA1 = true;
            //estadoMejoras[6].bought = true; 
            playerDash.DashAfilado1 = true;
            Debug.Log("Mejora Aplicada DA1");
            tiendaInteracion.DA1 = false;
        }
        if(tiendaInteracion.DA2 == true && playerDash.DashAfilado1 == true && playerDmg.actualSouls > 30) //dash afilado 2
        {
            playerDmg.actualSouls -= estadoMejoras[7].price; //revisar precio
            //cambioColorMejoraTienda.DA2 = true;
            //estadoMejoras[7].bought = true; 
            playerDash.DashAfilado2 = true;
            Debug.Log("Mejora Aplicada DA2");
            tiendaInteracion.DA2 = false;
        }


        if(tiendaInteracion.DP1 == true && playerDash.DashOfensivo == true && playerDmg.actualSouls > 30 && playerDash.DashAfilado1 == false) //dash potente 1
        {
            playerDmg.actualSouls -= estadoMejoras[8].price; //revisar precio
            //cambioColorMejoraTienda.DP1 = true;
            //estadoMejoras[8].bought = true; 
            playerDash.DashPotente1 = true;
            Debug.Log("Mejora Aplicada DP1");
            tiendaInteracion.DP1 = false;
        }
        if(tiendaInteracion.DP2 == true && playerDash.DashPotente1 == true && playerDmg.actualSouls > 30) //dash potente 2
        {
            playerDmg.actualSouls -= estadoMejoras[9].price; //revisar precio
            //cambioColorMejoraTienda.DP2 = true;
            //estadoMejoras[9].bought = true; 
            playerDash.DashPotente2 = true;
            Debug.Log("Mejora Aplicada DP2");
            tiendaInteracion.DP2 = false;
        }


        if(tiendaInteracion.DMDM == true && playerDash.DashAfilado2 == true && playerDash.DashPotente2 == true && playerDmg.actualSouls > 30) //dash mdm
        {
            playerDmg.actualSouls -= estadoMejoras[10].price; //revisar precio
            //cambioColorMejoraTienda.DMDM = true;
            //estadoMejoras[10].bought = true; 
            playerDash.MaestroDelMovimieto = true;
            Debug.Log("Mejora Aplicada DMDM");
            tiendaInteracion.DMDM = false;
        }
    }

    #endregion
}
