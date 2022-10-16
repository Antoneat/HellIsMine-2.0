using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DanoAtaud : MonoBehaviour
{
    PlayerDmg playerDmg;

    void Start()
    {
        playerDmg = FindObjectOfType<PlayerDmg>();    
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Player"))
        {
            playerDmg.actualvida -= 0.5f;
        }
    }
}
