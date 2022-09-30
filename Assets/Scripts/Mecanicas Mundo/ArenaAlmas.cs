using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArenaAlmas : MonoBehaviour
{
    private PlayerDmg playerDmg;

    private PlayerMovement playerMovement;

    public float danoArena;

    private bool pisandoArena;

    private float timerMain = 1;


    void Start()
    {  
        danoArena = 0.5f;

        pisandoArena = false;
    }

    
    void Update()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
        playerMovement = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerMovement>();

        ChangeDanoArena();

        if (pisandoArena == true)
        {
            timerMain -= Time.deltaTime;
            
        }

        if (timerMain <= 0)
        {
            timerMain = 1;
            BajarVida();
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            pisandoArena = true;
            playerMovement.maxSpeed = playerMovement.maxSpeed - 35 * playerMovement.maxSpeed / 100;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            pisandoArena = false;
            playerMovement.maxSpeed = 7.2f;
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
