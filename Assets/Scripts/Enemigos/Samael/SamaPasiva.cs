using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaPasiva : MonoBehaviour
{
    private SamaVida samaVida; // Script de la vida de Samael
    private float ticks;

    public float cooldownGeneral; // max cooldown el cual se spawnea cada enemigo
    private float cooldownToSpawnA, cooldownToSpawnB, cooldownToSpawnV; // cooldown para cada enemigo a spawnear

    public CapsuleCollider samaelVida;


    [Header("Enemigos")]
    public List<GameObject> agitador, buscador, verdugo; //Lista de los enemigos a spawnear
    public GameObject agitadorPrefab, buscadorPrefab, verdugoPrefab; // Prefabs de enemigos

    public bool curandose;
    void Start()
    {
        ticks = 0;
        samaVida = GetComponent<SamaVida>();
        curandose = false;
        cooldownToSpawnA = cooldownToSpawnB = cooldownToSpawnV = cooldownGeneral; // los cooldowns de todos los enemigos son igualados al general al principio de la pasiva.
    }

    void Update()
    {
        if (samaVida.vida <= 75) //Si tiene menos de x de vida...
        {
            InvokeRepeating(nameof(SpawnerAleatorio), 1f, 1f);
        }

        if (samaVida.vida <= 50) //Si tiene menos de x de vida...
        {
            InvokeRepeating(nameof(SpawnerAleatorio), 1f, 1f);
            //crea arena de almas
        }

        if (samaVida.vida <= 25) //Si tiene menos de x de vida...
        {
            InvokeRepeating(nameof(SpawnerAleatorio), 1f, 1f);
        }

        if (agitador.Count > 0 || buscador.Count > 0 || verdugo.Count > 0)
        {
        
            curandose = true;

            if (curandose)
            {
                ticks += Time.deltaTime;
                if (ticks < 15)
                    samaVida.vida += 1; // vida +1 hasta 15 ticks 
            }
        }

        if (agitador.Count < 1 || buscador.Count < 1 || verdugo.Count < 1)
        {
            curandose = false;
            ticks = 0;
        }

        // Baja el contador para spawnear
        if (cooldownToSpawnA >= 0)
        {
            cooldownToSpawnA -= Time.deltaTime;
        }
        if (cooldownToSpawnB >= 0)
        {
            cooldownToSpawnB -= Time.deltaTime;
        }
        if (cooldownToSpawnV >= 0)
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
        if (agitador.Count <= 8 && cooldownToSpawnA <= 0)
        {
            cooldownToSpawnA = cooldownGeneral;
            Instantiate(agitadorPrefab, randomSpawnPositionA, Quaternion.identity);
            agitador.Add(agitadorPrefab);
        }

        // Max cantidad de buscadores spawneados = 3
        if (buscador.Count <= 2 && cooldownToSpawnB <= 0)
        {
            cooldownToSpawnB = cooldownGeneral;
            Instantiate(buscadorPrefab, randomSpawnPositionB, Quaternion.identity);
            buscador.Add(buscadorPrefab);
        }

        // Max cantidad de verdugos spawneados = 2
        if (verdugo.Count <= 1 && cooldownToSpawnV <= 0)
        {
            cooldownToSpawnV = cooldownGeneral;
            Instantiate(verdugoPrefab, randomSpawnPositionV, Quaternion.identity);
            verdugo.Add(verdugoPrefab);
        }
    }
}