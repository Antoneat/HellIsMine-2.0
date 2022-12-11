using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaelFight : MonoBehaviour
{
    public float time;
    [SerializeField] GameObject Samael;
    [SerializeField] GameObject Puertas;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Samael.SetActive(true);
            Puertas.SetActive(true);
        }
    }
    public void SamaelActivator()
    {
        StartCoroutine(SamaelEso());
    }
    
    public IEnumerator SamaelEso()
    {
        yield return new WaitForSeconds(time);

        Samael.SetActive(true);
        Puertas.SetActive(true);
    }
}
