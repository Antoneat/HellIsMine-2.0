using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CuraInstantanea : MonoBehaviour
{
    private PlayerDmg playerDmg;

    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
    }

    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            playerDmg.actualvida = 30f;
        }
    }
}
