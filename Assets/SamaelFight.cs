using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaelFight : MonoBehaviour
{
    [SerializeField] GameObject Samael;
    [SerializeField] GameObject Puertas;

    void Start()
    {
        Samael.SetActive(false);
        Puertas.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Samael.SetActive(true);
            Puertas.SetActive(true);
        }
    }
}
