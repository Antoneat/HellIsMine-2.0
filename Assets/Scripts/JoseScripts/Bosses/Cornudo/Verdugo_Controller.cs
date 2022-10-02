using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Verdugo_Controller : MonoBehaviour
{
    public int id;
    public NavMeshAgent agent;
    public float enemySpeed;
    public Vector3 startPosition;
    GameObject player;
    GameObject cabezaPlayer;
    public bool onChase;
    public bool basicAttack;
    public bool lanzaAttack;
    public bool teleportToPlayer;
    
    int index;
    public GameObject[] spawnPointsSpheres;
    public GameObject lanzaSpawn;
    public GameObject spheraQuemaduraPrefab;
    public GameObject lanzasPrefab;
    public bool smokingVFX;
    public bool chargingLanzasVFX;
    public GameObject verdugoMesh;
    bool enemyActivated;

    [Header("VFX GameObjects")]
    public GameObject SmokeVfx;
    public GameObject ChargingLanzasVfX;
    PlayerMovement _playerMovement;

    void Start()
    {
        agent.speed = enemySpeed;
        GameEvents.currentGEvent.combatTriggerExit += Activate;
        smokingVFX = false;
        player = GameObject.FindGameObjectWithTag("Player");
        cabezaPlayer = GameObject.Find("mixamorig:Head");
        index = spawnPointsSpheres.Length;
        startPosition = this.gameObject.transform.position;
        _playerMovement = player.GetComponent<PlayerMovement>();
    }

   
    void Update()
    {
        
       
        if (enemyActivated)
        {
            
            Vector3 targetPosition = new Vector3(cabezaPlayer.transform.position.x, transform.position.y, cabezaPlayer.transform.position.z);
            Quaternion rotTarget = Quaternion.LookRotation(targetPosition - this.transform.position);
            this.transform.rotation = Quaternion.RotateTowards(this.transform.rotation, rotTarget, 100 * Time.deltaTime);
            onChase = true;
        }
        Chase();



        if (basicAttack)
        {
            StartCoroutine(SpawnRafaga());
            basicAttack = false;
        }
        if (lanzaAttack)
        {
            StartCoroutine(SpawnLanzas());
            lanzaAttack = false;
        }
        if (teleportToPlayer)
        {
            smokingVFX = true;
            StartCoroutine(TeleportToPlayer());
            teleportToPlayer = false;
        }
        
    }
    void Activate(int id)
    {
        if (id == this.id)
        {
            enemyActivated = true;
            
        }
    }
    void Chase()
    {
        if (onChase)
        {
            agent.SetDestination(player.transform.position);
        }

    }
    #region Courutines
    IEnumerator TeleportToPlayer()
    {
        
        //SmokeVfx.SetActive(true);
        verdugoMesh.SetActive(false);
        agent.speed = 15f;
        
        yield return new WaitForSeconds(3);
        agent.speed = 2.5f;
        verdugoMesh.SetActive(true);
       // new WaitForSeconds(3f);
        //SmokeVfx.SetActive(false);
        smokingVFX = false;
    }

    IEnumerator SpawnRafaga()
    {
        
        agent.speed = 0;
        yield return new WaitForSeconds(1);
        agent.speed = enemySpeed;
        
        for (int i = 0; i <index; i++)
        {
            
            GameObject spheraQuemadura = Instantiate(spheraQuemaduraPrefab);
            spheraQuemadura.transform.position = spawnPointsSpheres[i].transform.position;
            spheraQuemadura.transform.localRotation = spawnPointsSpheres[i].gameObject.transform.rotation;
        }
  
    }

    IEnumerator SpawnLanzas()
    {
        //chargingLanzasVFX = true;
        ChargingLanzasVfX.SetActive(true);
        agent.speed = 0;
        yield return new WaitForSeconds(3f);
        agent.speed = enemySpeed;
        //chargingLanzasVFX = false;

        GameObject lanzas = Instantiate(lanzasPrefab);
        lanzas.transform.position = lanzaSpawn.transform.position;
        lanzas.transform.localRotation = lanzaSpawn.gameObject.transform.rotation;
        new WaitForSeconds(1f);
        ChargingLanzasVfX.SetActive(false);
    }

    IEnumerator StuntPlayer()
    {
        _playerMovement.speed = 0;
        yield return new WaitForSeconds(3);
        _playerMovement.speed = 500;
    }
    #endregion

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Player")&& smokingVFX == true)
        {
            StartCoroutine(StuntPlayer());
        }
    }
}
