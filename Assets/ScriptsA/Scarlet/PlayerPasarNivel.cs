using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPasarNivel : MonoBehaviour
{
    [SerializeField] GameObject nivel1;
    [SerializeField] GameObject nivel2;
    [SerializeField] GameObject nivel3;


    //[SerializeField] GameObject nivel2Terreno;
    //[SerializeField] Transform pointTerreno2;
    
    
    [SerializeField] GameObject panelLoadingScreen;


    [SerializeField] Transform inicioNivel2;
    [SerializeField] Transform inicioNivel3;


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
        else if(terrenoValor == 2)
        {
            StopCoroutine("Terreno3");
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
        
        if (other.CompareTag("Nivel 2"))
        {
            nivel2.SetActive(false);
            nivel3.SetActive(true);

            transform.position = inicioNivel3.position;

            StartCoroutine("Terreno3");
        }
    }

    IEnumerator Terreno2()
    {
        panelLoadingScreen.SetActive(true);
        LoadingScreenManager.instanciate.ReloadText();
        //nivel2Terreno.transform.position = pointTerreno2.position;
        //nivel2Terreno.SetActive(false);
        //nivel2Terreno.SetActive(true);
        yield return new WaitForSeconds(3f);
        panelLoadingScreen.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        terrenoValor = 1;
    }
    
    IEnumerator Terreno3()
    {
        panelLoadingScreen.SetActive(true);
        LoadingScreenManager.instanciate.ReloadText();
        //nivel2Terreno.transform.position = pointTerreno2.position;
        //nivel2Terreno.SetActive(false);
        //nivel2Terreno.SetActive(true);
        yield return new WaitForSeconds(3f);
        panelLoadingScreen.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        terrenoValor = 2;
    }
}
