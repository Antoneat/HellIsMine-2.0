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
    public AudioSource OlSource,PistSource;
    public ThemeManager themeManager;
    public bool themeChanged;
    public AudioClip OleadaPista,CombatPista;
    public bool Audio;

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

        //Cancion
        themeManager = GameObject.FindGameObjectWithTag("ThemeManager").GetComponent<ThemeManager>();

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
            if (!Audio)
            {
                Audio = true;
                OlSource.PlayOneShot(OleadaPista);
                //PistSource.Play();
                themeManager.ChangeTheme();
                for (int i=0; i < puertas.Length; i++)
				{
                    puertas[i].SetActive(true);
				}
            }
        }

        if (doorActivator == false)
        {
            for (int i = 0; i < puertas.Length; i++)
            {
                //PistSource.Stop();
                puertas[i].SetActive(false);
            }
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
            CheckChange();
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

    public void CheckChange()
	{
        if(!themeChanged)
		{
            themeManager.ChangeTheme();
            themeChanged = true;
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