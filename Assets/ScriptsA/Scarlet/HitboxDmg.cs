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
        if(tiendaInteracion.CA1 == true && playerDmg.actualSouls > estadoMejoras[0].price && playerAttackCombo.CortesTenaces1 == false) // Cortes agiles 1
        {
            playerDmg.actualSouls -= estadoMejoras[0].price; //revisar precio
            playerAttackCombo.CortesAgiles1 = true; 
            Debug.Log("Mejora Aplicada CA1"); 
            tiendaInteracion.CA1 = false;
        }

        
        if(tiendaInteracion.CA2 == true && playerAttackCombo.CortesAgiles1 ==  true && playerDmg.actualSouls > estadoMejoras[1].price) // Cortes agiles 2
        {
            playerDmg.actualSouls -= estadoMejoras[1].price; //revisar precio
            playerAttackCombo.CortesAgiles2 = true;
            Debug.Log("Mejora Aplicada CA2");
            tiendaInteracion.CA2 = false;
        } 
        
        if(tiendaInteracion.CT1 == true && playerDmg.actualSouls > estadoMejoras[2].price && playerAttackCombo.CortesAgiles1 == false) // Cortes tenaces 1
        {
            playerDmg.actualSouls -= estadoMejoras[2].price; //revisar precio
            playerAttackCombo.CortesTenaces1 = true;
            Debug.Log("Mejora Aplicada CT1");
            tiendaInteracion.CT1 = false;
        } 
        
        if(tiendaInteracion.CT2 == true && playerAttackCombo.CortesTenaces1 == true && playerDmg.actualSouls > estadoMejoras[3].price) // Cortes tenaces 2
        {
            playerDmg.actualSouls -= estadoMejoras[3].price; //revisar precio
            playerAttackCombo.CortesTenaces2 = true;
            Debug.Log("Mejora Aplicada CT2");
            tiendaInteracion.CT2 = false;
        } 
        
        if(tiendaInteracion.CP == true && playerAttackCombo.CortesAgiles2 == true && playerDmg.actualSouls > estadoMejoras[4].price || tiendaInteracion.CP == true && playerAttackCombo.CortesTenaces2 == true  && playerDmg.actualSouls > estadoMejoras[4].price) // Cortes perfectos
        {
            playerDmg.actualSouls -= estadoMejoras[4].price; //revisar precio
            playerAttackCombo.CortesPerfectos = true;
            Debug.Log("Mejora Aplicada CP");
            tiendaInteracion.CP = false;
        } 




        if(tiendaInteracion.DO == true && playerDmg.actualSouls > estadoMejoras[5].price) //dash ofensivo
        {
            playerDmg.actualSouls -= estadoMejoras[5].price; //revisar precio
            playerDash.DashOfensivo = true;
            Debug.Log("Mejora Aplicada DO");
            tiendaInteracion.DO = false;
        }


        if(tiendaInteracion.DA1 == true && playerDash.DashOfensivo == true && playerDmg.actualSouls > estadoMejoras[6].price && playerDash.DashPotente1 == false) //dash afilado 1
        {
            playerDmg.actualSouls -= estadoMejoras[6].price; //revisar precio
            playerDash.DashAfilado1 = true;
            Debug.Log("Mejora Aplicada DA1");
            tiendaInteracion.DA1 = false;
        }
        if(tiendaInteracion.DA2 == true && playerDash.DashAfilado1 == true && playerDmg.actualSouls > estadoMejoras[7].price) //dash afilado 2
        {
            playerDmg.actualSouls -= estadoMejoras[7].price; //revisar precio
            playerDash.DashAfilado2 = true;
            Debug.Log("Mejora Aplicada DA2");
            tiendaInteracion.DA2 = false;
        }


        if(tiendaInteracion.DP1 == true && playerDash.DashOfensivo == true && playerDmg.actualSouls > estadoMejoras[8].price && playerDash.DashAfilado1 == false) //dash potente 1
        {
            playerDmg.actualSouls -= estadoMejoras[8].price; //revisar precio
            playerDash.DashPotente1 = true;
            Debug.Log("Mejora Aplicada DP1");
            tiendaInteracion.DP1 = false;
        }
        if(tiendaInteracion.DP2 == true && playerDash.DashPotente1 == true && playerDmg.actualSouls > estadoMejoras[9].price) //dash potente 2
        {
            playerDmg.actualSouls -= estadoMejoras[9].price; //revisar precio
            playerDash.DashPotente2 = true;
            Debug.Log("Mejora Aplicada DP2");
            tiendaInteracion.DP2 = false;
        }


        if(tiendaInteracion.DMDM == true && playerDash.DashAfilado2 == true && playerDmg.actualSouls > estadoMejoras[10].price || tiendaInteracion.DMDM == true && playerDash.DashPotente2 == true && playerDmg.actualSouls > estadoMejoras[10].price) //dash mdm
        {
            playerDmg.actualSouls -= estadoMejoras[10].price; //revisar precio
            playerDash.MaestroDelMovimieto = true;
            Debug.Log("Mejora Aplicada DMDM");
            tiendaInteracion.DMDM = false;
        }
    }

    #endregion
}
