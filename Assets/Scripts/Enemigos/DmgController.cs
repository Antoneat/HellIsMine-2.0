using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DmgController : MonoBehaviour
{
    //private PlayerDmg plyrDMG;

    //private BombDmg bombdmg;
    public List<GameObject> Bombitas;
    public bool deadBomb;

    //private BuscadorController dogC;
   // private BuscadorDmg dogdmg;
    public bool deadBusc;

    public float dmgMultiplier;

    void Start()
    {
        //plyrDMG = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerDmg>();
    
       // dogC = GameObject.FindGameObjectWithTag("Buscador").GetComponent<BuscadorController>();

        Bombitas = new List<GameObject>();
    }


    void Update()
    {
       // Bombitas.AddRange(GameObject.FindGameObjectsWithTag("Bombita"));
     
        //BombDAÑO();

    }

   /* public void BombDAÑO()
    {
        foreach (GameObject Bombita in Bombitas)
        {
            dmgMultiplier += 1;
           if (Bombitas ==null)
            {
                dmgMultiplier= 1;
            }
        }
    }
   */
}
