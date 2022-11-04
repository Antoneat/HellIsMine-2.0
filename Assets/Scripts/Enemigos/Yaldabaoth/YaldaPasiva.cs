using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class YaldaPasiva : MonoBehaviour
{
    private YaldaVida yaldaVida; // Script de la vida de Yalda

    public float cooldownGeneral; // max cooldown el cual se spawnea cada enemigo
    private float cooldownToSpawnA, cooldownToSpawnB, cooldownToSpawnV; // cooldown para cada enemigo a spawnear

    [Header("Enemigos")]
    public List<GameObject> agitador, buscador, verdugo; //Lista de los enemigos a spawnear
    public GameObject agitadorPrefab, buscadorPrefab, verdugoPrefab; // Prefabs de enemigos

    void Start()
    {
        yaldaVida = GetComponent<YaldaVida>();
        cooldownToSpawnA = cooldownToSpawnB = cooldownToSpawnV = cooldownGeneral; // los cooldowns de todos los enemigos son igualados al general al principio de la pasiva.
    }

    void Update()
    {
        if(yaldaVida.actualVida <= 40) //Si tiene menos de 40 de vida...
        {
            InvokeRepeating(nameof(SpawnerAleatorio), 1f, 1f);
        }

        // Baja el contador para spawnear
        if(cooldownToSpawnA >= 0)
        {
            cooldownToSpawnA -= Time.deltaTime;
        }
        if(cooldownToSpawnB >= 0)
        {
            cooldownToSpawnB -= Time.deltaTime;
        }
        if(cooldownToSpawnV >= 0)
        {
            cooldownToSpawnV -= Time.deltaTime;
        }
    }

    public void SpawnerAleatorio()
    {   
        // Posiciones aleatorias para cada enemigo (si no spawnean en el mismo sitio)
        Vector3 randomSpawnPositionA = new Vector3(UnityEngine.Random.Range(-10, 11), 1, UnityEngine.Random.Range(-10, 11)); //CAMBIAR POR LAS DIMENSIONES DE LA SALA DE YALDA
        Vector3 randomSpawnPositionB = new Vector3(UnityEngine.Random.Range(-10, 11), 1, UnityEngine.Random.Range(-10, 11)); //CAMBIAR POR LAS DIMENSIONES DE LA SALA DE YALDA
        Vector3 randomSpawnPositionV = new Vector3(UnityEngine.Random.Range(-10, 11), 1, UnityEngine.Random.Range(-10, 11)); //CAMBIAR POR LAS DIMENSIONES DE LA SALA DE YALDA

        // Max cantidad de agitadores spawneados = 9
        if(agitador.Count <= 8 && cooldownToSpawnA <= 0)
        {
            cooldownToSpawnA = cooldownGeneral;
            Instantiate(agitadorPrefab, randomSpawnPositionA, Quaternion.identity);
            agitador.Add(agitadorPrefab);
        }

        // Max cantidad de buscadores spawneados = 3
        if(buscador.Count <= 2 && cooldownToSpawnB <= 0)
        {
            cooldownToSpawnB = cooldownGeneral;
            Instantiate(buscadorPrefab, randomSpawnPositionB, Quaternion.identity);
            buscador.Add(buscadorPrefab);
        }

        // Max cantidad de verdugos spawneados = 2
        if(verdugo.Count <= 1 && cooldownToSpawnV <= 0)
        {
            cooldownToSpawnV = cooldownGeneral;
            Instantiate(verdugoPrefab, randomSpawnPositionV, Quaternion.identity);
            verdugo.Add(verdugoPrefab);
        }
    }
}
