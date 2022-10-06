using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerManager : MonoBehaviour
{
    [Header("Oleadas")]
    public GameObject[] oleadas;
    public int indxOleadas;
    public int ordenOleada;
    public int childrens;
    public bool spawning;
    
    //childcount

    [Header("Puertas")]
    public GameObject[] puertas;
    public int indxPuertas;
    public bool doorActivator;

    void Start()
    {
        // Oleadas
        spawning = false;
        indxOleadas = oleadas.Length;
        ordenOleada = 0;

        // Puertas
        doorActivator = false;
        indxPuertas = puertas.Length;
    }

    void Update()
    {
        Waves();
        Doors();
    }

    public void Doors()
    {
        if (doorActivator == true)
        {
            puertas[0].SetActive(true);
            puertas[1].SetActive(true);
            puertas[2].SetActive(true);
            puertas[3].SetActive(true);
        }

        if (doorActivator == false)
        {
            puertas[0].SetActive(false);
            puertas[1].SetActive(false);
            puertas[2].SetActive(false);
            puertas[3].SetActive(false);
        }
    }

    public void Waves()
    {
        if (spawning == false && doorActivator == true)
        {
            StartCoroutine(WaveActivator());
        }

        if (ordenOleada == indxOleadas)
        {
            doorActivator = false;
            ordenOleada = 0;
        }
        else
        {
            childrens = oleadas[ordenOleada].transform.childCount;
        }

        if (childrens == 0)
        {
            spawning = false;
            ordenOleada++;
        }
    }

    IEnumerator WaveActivator()
    {
        spawning = true;

        // Mostrar texto de oleada actual.

        yield return new WaitForSeconds(1f);
        
        // Quitar texto.

        oleadas[ordenOleada].SetActive(true);

        yield break;
    }
}