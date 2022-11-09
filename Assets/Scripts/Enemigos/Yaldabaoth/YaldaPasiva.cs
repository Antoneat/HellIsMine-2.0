using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class YaldaPasiva : MonoBehaviour
{

    private YaldaVida yaldaVida; // Script de la vida de Yalda
    private Animator anim;

    // public float cooldownGeneral; // Max cooldown el cual se spawnea cada enemigo
    // private float cooldownToSpawnA, cooldownToSpawnB, cooldownToSpawnV; // cooldown para cada enemigo a spawnear

    public int curitas;

    public bool curandose; // Comprobante si esta curandose.

    [Header("Enemigos")]
    public GameObject oleada1, oleada2;
    // public List<GameObject> agitador, buscador, verdugo; //Lista de los enemigos a spawnear
    // public GameObject agitadorPrefab, buscadorPrefab, verdugoPrefab; // Prefabs de enemigos

    void Start()
    {
        yaldaVida = GetComponent<YaldaVida>();
        anim = GetComponent<Animator>();
        curandose = false;
        curitas = 0;
        //cooldownToSpawnA = cooldownToSpawnB = cooldownToSpawnV = cooldownGeneral; // los cooldowns de todos los enemigos son igualados al general al principio de la pasiva.
    }

    void Update()
    {
        if(yaldaVida.life <= 50 && curitas == 0 || yaldaVida.life <= 20 && curitas == 1) //Si tiene menos de 50 de vida y no se ha curado entonces...
        {
            curitas++;
            curandose = true;
			anim.Play("Curandose");

            if(curitas == 0)
            {
                oleada1.SetActive(true);
            }
            else if( curitas == 1)
            {
                oleada2.SetActive(true);
            }

            // InvokeRepeating(nameof(SpawnerAleatorio), 1f, 1f); //Invoca los enemigos en una posicion distinta.
        }
        // Baja el contador para spawnear
        // if(cooldownToSpawnA >= 0)
        // {
        //     cooldownToSpawnA -= Time.deltaTime;
        // }
        // if(cooldownToSpawnB >= 0)
        // {
        //     cooldownToSpawnB -= Time.deltaTime;
        // }
        // if(cooldownToSpawnV >= 0)
        // {
        //     cooldownToSpawnV -= Time.deltaTime;
        // }
    }

    // public void SpawnerAleatorio()
    // {   
    //     // Posiciones aleatorias para cada enemigo (si no spawnean en el mismo sitio)
    //     Vector3 randomSpawnPositionA = new Vector3(UnityEngine.Random.Range(151, 170), 0, UnityEngine.Random.Range(-29, -12)); //CAMBIAR EN CASO DE AGRANDAR SALA
    //     Vector3 randomSpawnPositionB = new Vector3(UnityEngine.Random.Range(151, 170), 0, UnityEngine.Random.Range(-29, -12)); //CAMBIAR EN CASO DE AGRANDAR SALA
    //     Vector3 randomSpawnPositionV = new Vector3(UnityEngine.Random.Range(151, 170), 0, UnityEngine.Random.Range(-29, -12)); //CAMBIAR EN CASO DE AGRANDAR SALA

    //     // Max cantidad de agitadores spawneados = 9
    //     if(agitador.Count <= 8 && cooldownToSpawnA <= 0)
    //     {
    //         cooldownToSpawnA = cooldownGeneral;
    //         Instantiate(agitadorPrefab, randomSpawnPositionA, Quaternion.identity);
    //         agitador.Add(agitadorPrefab);
    //     }

    //     // Max cantidad de buscadores spawneados = 3
    //     if(buscador.Count <= 2 && cooldownToSpawnB <= 0)
    //     {
    //         cooldownToSpawnB = cooldownGeneral;
    //         Instantiate(buscadorPrefab, randomSpawnPositionB, Quaternion.identity);
    //         buscador.Add(buscadorPrefab);
    //     }

    //     // Max cantidad de verdugos spawneados = 2
    //     if(verdugo.Count <= 1 && cooldownToSpawnV <= 0)
    //     {
    //         cooldownToSpawnV = cooldownGeneral;
    //         Instantiate(verdugoPrefab, randomSpawnPositionV, Quaternion.identity);
    //         verdugo.Add(verdugoPrefab);
    //     }
    // }

    public void Cura()
    {
        // comprobante de si mato a todos antes de curarse, que pare
        yaldaVida.life++;
    }

    public void FinDeCura()
    {
        curandose = false;
    }
}
