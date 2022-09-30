using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArenaAlmas : MonoBehaviour
{
    private PlayerDmg playerDmg;

    public float danoArena;

    private bool pisandoArena;

    public float timerMain = 2;


    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();

        danoArena = 0.5f;

        pisandoArena = false;
    }

    
    void Update()
    {
        ChangeDanoArena();

        if (pisandoArena == true)
        {
            timerMain -= Time.deltaTime;
        }

        if (timerMain <= 0)
        {
            timerMain = 2;
            BajarVida();
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            pisandoArena = true;        
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            pisandoArena = false;
        }
    }

    private void BajarVida()
    {
        playerDmg.actualvida -= danoArena;
    }

    private void ChangeDanoArena()
    {
        if(playerDmg.actualvida <= 1)
        {
            danoArena = 0f;
        }

        if (playerDmg.actualvida > 1)
        {
            danoArena = 0.5f;
        }
    }
}
