using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrisalidaDeAlmas : MonoBehaviour
{
    private PlayerDmg playerDmg;
    //private SpawCrisalida spawCrisalida;
    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
        //spawCrisalida = GameObject.FindGameObjectWithTag("SpawCrisalida").GetComponent<SpawCrisalida>();
    }

    
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Guadana"))
        {
            playerDmg.actualvida += 2.5f;
            Destroy(this.gameObject);
            //spawCrisalida.crisalidaIsActive = false;
        }
    }
}
