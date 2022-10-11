using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TiendaInteracion : MonoBehaviour
{
    public GameObject panelInicial, panelTiendaMejoras;

    void Start()
    {
        
    }

    void Update()
    {
        
    }

    public void OpenTiendaUI()
    {
        panelInicial.SetActive(false);
        panelTiendaMejoras.SetActive(true);
    }
    public void CloseTiendaUI()
    {
        panelInicial.SetActive(true);
        panelTiendaMejoras.SetActive(false);
    }
}
