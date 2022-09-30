using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Verdugo_Controller : MonoBehaviour
{
    public NavMeshAgent agent;
    public Vector3 startPosition;
    GameObject player;
    public bool active;
    public bool onChase;
    public bool basicAttack;
    int index;
    public GameObject[] spawnPointsSpheres;
    public GameObject spheraQuemaduraPrefab;
    public bool chargingEffect;
    public GameObject verdugoMesh;
    

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        index = spawnPointsSpheres.Length;
        startPosition = this.gameObject.transform.position;
    }

   
    void Update()
    {
        //transform.LookAt(player.transform);
        Chase();
        if (active)
        {
            StartCoroutine(TeleportToPlayer());
            active = false;
        }

        if (basicAttack)
        {
            StartCoroutine(SpawnRafaga());
            basicAttack = false;
        }

        
    }

    void Chase()
    {
        if (onChase)
        {
            agent.SetDestination(player.transform.position);
        }

      
    }

    IEnumerator TeleportToPlayer()
    {
        chargingEffect = true;
        verdugoMesh.SetActive(false);
        agent.speed = 15f;
        
        yield return new WaitForSeconds(3);
        agent.speed = 2.5f;

        verdugoMesh.SetActive(true);
        chargingEffect = false;
    }

    IEnumerator SpawnRafaga()
    {
        
        agent.speed = 0;
        yield return new WaitForSeconds(1);
        agent.speed = 2.5f;
        
        for (int i = 0; i <index; i++)
        {
            
            GameObject spheraQuemadura = Instantiate(spheraQuemaduraPrefab);
            spheraQuemadura.transform.position = spawnPointsSpheres[i].transform.position;
            spheraQuemadura.transform.localRotation = spawnPointsSpheres[i].gameObject.transform.rotation;
        }
  
    }
}
