using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VidaCero : MonoBehaviour
{
    private PlayerDmg playerDmg;

    public float danoTotalCero;

    private bool pisandoTotalCero;

    public float timerMain = 2;


    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();

        danoTotalCero = 2f;

        pisandoTotalCero = false;
    }


    void Update()
    {

        if (pisandoTotalCero == true)
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
        if (other.CompareTag("Player"))
        {
            pisandoTotalCero = true;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            pisandoTotalCero = false;
        }
    }

    private void BajarVida()
    {
        playerDmg.actualvida -= danoTotalCero;
    }
}
