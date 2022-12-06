using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerPasarNivel : MonoBehaviour
{
    [SerializeField] GameObject nivel1;
    [SerializeField] GameObject nivel2;
    [SerializeField] GameObject nivel3;

    [SerializeField] GameObject panelLoadingScreen; // Pantalla de carga.


    [SerializeField] GameObject inicioNivel1;
    [SerializeField] GameObject inicioNivel2;
    [SerializeField] GameObject inicioNivel3;
    [SerializeField] GameObject testYalda;
    [SerializeField] GameObject testSamael;

    public int terrenoValor;

    public static PlayerPasarNivel instance;

    void Awake()
    {
        instance = this;
        LoadData();
        inicioNivel1 = GameObject.Find("ScarletPointLevel1");
        inicioNivel2 = GameObject.Find("ScarletPointLevel2");
        inicioNivel3 = GameObject.Find("ScarletPointLevel3");
        testYalda= GameObject.Find("ScarletPointYalda"); ;
        testSamael = GameObject.Find("ScarletPointSamael"); 

        panelLoadingScreen = GameObject.Find("LoadingPanelCanva");
    }

    void Start()
    {

        if(terrenoValor == 0)
        {
            ChargeLevel1();
        }
        if(terrenoValor == 1)
        {
            ChargeLevel2();
            StartCoroutine("Terreno2");
        }
        if(terrenoValor == 2)
        {
            ChargeLevel3();
        }
        if (terrenoValor == 3)
        {
            ChargeLevelYalda();

        }
        if (terrenoValor == 4)
        {
            ChargeLevelSamael();
        }
    }

    private void SaveData()
    {
        ScarletData.instance.terrenoValor = terrenoValor;
    }

    private void LoadData()
    {
        terrenoValor = ScarletData.instance.terrenoValor;
    }
    private void OnDestroy()
    {
        SaveData();
    }

    void Update()
    {
        /*if (terrenoValor == 1)
        {
            StopCoroutine("Terreno2");
        }

        if(terrenoValor == 2)
        {
            StopCoroutine("Terreno3");
        }*/
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Nivel 1"))
        {
            // StartCoroutine("Terreno2");
            // ChargeLevel2();

            GoToLvl2();
        }
        
        if (other.gameObject.CompareTag("Nivel 2"))
        {
            // StartCoroutine("Terreno3");
            // ChargeLevel3();

            GoToLvl3();
        }
    }

    // Corrutina y Metodo para ir al nivel 1
    IEnumerator Terreno1()
    {
        panelLoadingScreen.SetActive(true);
        LoadingScreenManager.instanciate.ReloadText();
        yield return new WaitForSeconds(3f);
        panelLoadingScreen.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        yield break;
    }

    public void ChargeLevel1()
    {
        nivel1.SetActive(true);
        nivel2.SetActive(false);
        nivel3.SetActive(false);

        transform.position = inicioNivel1.transform.position;
    }

    // Corrutina y Metodo para ir al nivel 2
    IEnumerator Terreno2()
    {
        panelLoadingScreen.SetActive(true);
        LoadingScreenManager.instanciate.ReloadText();
        yield return new WaitForSeconds(3f);
        panelLoadingScreen.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        yield break;
        //terrenoValor = 1;
    }

    public void ChargeLevel2()
    {
        nivel1.SetActive(false);
        nivel2.SetActive(true);
        nivel3.SetActive(false);

        transform.position = inicioNivel2.transform.position;       
    }

    // Corrutina y Metodo para ir al nivel 3
    IEnumerator Terreno3()
    {
        panelLoadingScreen.SetActive(true);
        LoadingScreenManager.instanciate.ReloadText();
        yield return new WaitForSeconds(3f);
        panelLoadingScreen.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        yield break;
        //terrenoValor = 2;
    }

    public void ChargeLevel3()
    {
        nivel1.SetActive(false);
        nivel2.SetActive(false);
        nivel3.SetActive(true);

        transform.position = inicioNivel3.transform.position;
    }

    public void ChargeLevelYalda()
    {
        transform.position = testYalda.transform.position;
    }

    public void ChargeLevelSamael()
    {
        transform.position = testSamael.transform.position;
    }
   
    // Metodos para la consola
    public void GoToLvl1()
    {
        //StartCoroutine("Terreno1");
        //ChargeLevel1();
        terrenoValor = 0;
        RestartLevel();
    }

    public void GoToLvl2()
    {
        //StartCoroutine("Terreno2");
        //ChargeLevel2();
        terrenoValor = 1;
        RestartLevel();
    }

    public void GoToLvl3()
    {
        //StartCoroutine("Terreno3");   
        //ChargeLevel3();
        terrenoValor = 2;
        RestartLevel();
    }

    public void GotoLevelYalda()
    {
        terrenoValor = 3;
        RestartLevel();
    }

    public void GotoLevelSamael()
    {
        terrenoValor = 4;
        RestartLevel();
    }

    // Metodo para el boton de "Reiniciar nivel"
    public void RestartLevel()
    {
        SceneManager.LoadScene(1);
    }
}