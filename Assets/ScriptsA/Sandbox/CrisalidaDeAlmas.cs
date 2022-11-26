using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrisalidaDeAlmas : MonoBehaviour
{
    private PlayerDmg playerDmg;
    public GameObject SoulVFX;
    public float healAmount;
    public int soulAmount = 1;
    public int randomSouls;
    //private SpawCrisalida spawCrisalida;
    void Start()
    {
        playerDmg = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
        //spawCrisalida = GameObject.FindGameObjectWithTag("SpawCrisalida").GetComponent<SpawCrisalida>();
        randomSouls = Random.Range(1,3);
    }

    
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Guadana") || other.CompareTag("AtaqueDuro"))
        {
            GameObject player = GameObject.Find("ScarletFinal");
            GameObject obj = Instantiate(SoulVFX);
            for (int i = 0; i < randomSouls; i++)
            {
                obj.transform.position = new Vector3(transform.position.x + Random.Range(-2,2), transform.position.y, transform.position.z + Random.Range(-2, 2));
                obj.GetComponent<AlmasParent>().almaScript.curacion = healAmount;
                obj.GetComponent<AlmasParent>().almaScript.almas = soulAmount;
            }
            //Destroy(this.gameObject);
            //spawCrisalida.crisalidaIsActive = false;
        }
    }
}
