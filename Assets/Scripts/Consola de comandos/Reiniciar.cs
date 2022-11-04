using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Reiniciar : MonoBehaviour
{

    public GameObject scarletPrefab;

    public Transform spawnScarlet;

    public ConsolaComandosManager consolaComandos;

    public int numDeEscena;

    public void ReinciarScarlet()
    {
        consolaComandos.panelReinicio.SetActive(false);
        SceneManager.LoadScene(numDeEscena);
        //Instantiate(scarletPrefab, spawnScarlet.position, spawnScarlet.rotation);
    }
}
