using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TiendaManager : MonoBehaviour
{
    public GameObject img_Tienda;

    void Start()
    {
        
    }

    void Update()
    {
        
    }

    public void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.CompareTag("Player"))
        {
            img_Tienda.SetActive(true);
            Time.timeScale = 1;
        }
    }

    public void CerrarTienda()
    {
        img_Tienda.SetActive(false);
        Time.timeScale = 1;
    }
}
