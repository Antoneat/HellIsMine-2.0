using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPasarNivel : MonoBehaviour
{
    [SerializeField] GameObject nivel1;
    [SerializeField] GameObject nivel2;
    //[SerializeField] GameObject nivel3;


    [SerializeField] GameObject nivel2Terreno;
    [SerializeField] Transform pointTerreno2;


    [SerializeField] Transform inicioNivel2;


    int terrenoValor;

    void Start()
    {
        terrenoValor = 0;
    }

    // Update is called once per frame
    void Update()
    {
        if (terrenoValor == 1)
        {
            StopCoroutine("Terreno2");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Nivel 1"))
        {
            nivel1.SetActive(false);
            nivel2.SetActive(true);

            transform.position = inicioNivel2.position;

            StartCoroutine("Terreno2");
        }
    }

    IEnumerator Terreno2()
    {
        nivel2Terreno.transform.position = pointTerreno2.position;
        nivel2Terreno.SetActive(false);
        yield return new WaitForSeconds(0.5f);
        nivel2Terreno.SetActive(true);
        terrenoValor = 1;
    }
}
