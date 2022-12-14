using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaelFight : MonoBehaviour
{
    public float time;
    [SerializeField] GameObject Samael;
    [SerializeField] GameObject Puertas;
    public GameObject calmTheme;
    public GameObject combatTheme;
    public GameObject bossTheme;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Samael.SetActive(true);
            Puertas.SetActive(true);
            calmTheme.GetComponent<Animator>().SetBool("InBattle", true);
            combatTheme.GetComponent<Animator>().SetBool("InBattle", false);
            bossTheme.GetComponent<Animator>().SetBool("InBattle", true);   
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
        calmTheme.GetComponent<Animator>().SetBool("InBattle", true);
        combatTheme.GetComponent<Animator>().SetBool("InBattle", false);
        bossTheme.GetComponent<Animator>().SetBool("InBattle", true);
    }
}
