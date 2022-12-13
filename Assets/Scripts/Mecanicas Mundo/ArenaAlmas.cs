using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ArenaAlmas : MonoBehaviour
{

    public Animator anim;
    private PlayerDmg playerDmg;

    private PlayerMovement playerMovement;

    public float danoArena;

    private bool pisandoArena;

    public float timerMain = 1;

    


    //public AudioSource pasosArena;


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
            anim.SetBool("collisionArena", true);
            //pasosArena.Play();
            pisandoArena = true;
            //playerMovement.maxSpeed = playerMovement.maxSpeed - 35 * playerMovement.maxSpeed / 100;
            playerMovement.velocityOfMovement = playerMovement.velocityOfMovement - 35 * playerMovement.velocityOfMovement / 100;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            anim.SetBool("collisionArena", false);
            pisandoArena = false;
            //playerMovement.maxSpeed = 7.2f;
            //pasosArena.Stop();
        }
    }

    private void BajarVida()
    {
        playerDmg.actualvida -= danoArena;
        StartCoroutine(playerDmg.LifeLose());
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
