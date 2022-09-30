using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StadosController : MonoBehaviour
{
    private bool currentlyQueamdo;
    private bool currentlyBleeding;
    private bool currentlyStunned;

    // Floats used for quemado.
    public float timeBurning;

    // Floats used for sangrado.
    public float timeBleeding;

    // Floats used for stuneado.
    public float timeStunned;

    //datos jugador
    PlayerDmg pDmg;
    PlayerMovement pMov;

    private void Start()
    {
        currentlyQueamdo = false;
        currentlyBleeding = false;
        currentlyStunned = false;
    }

    void Update()
    {

    }
 
    
   void Quemado()
    {
        if (currentlyQueamdo==true)
        {
            timeBurning += Time.deltaTime;
           StartCoroutine(Quemandose());
            if (timeBurning >= 3f)
            {
                currentlyQueamdo=false;
            }
        }
    }

    void Bleeding()
    {
        if (currentlyBleeding == true)
        {
            timeBleeding += Time.deltaTime;
            StartCoroutine(Sangrando());
            if (timeBleeding >= 5f)
            {
                currentlyBleeding = false;
            }
        }
    }

    void Stunned()
    {
        if (currentlyStunned == true)
        {
            timeStunned += Time.deltaTime;
            pMov.speed = 0;
            if (timeStunned>= 5f)
            {
                pMov.speed = 500f;
                currentlyStunned = false;
            }
        }
    }

    IEnumerator Quemandose()
    {
        pMov.speed = pMov.speed * 0.25f;
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        pMov.speed = 500f;
        yield break;
    }
    IEnumerator Sangrando()
    {
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        yield return new WaitForSecondsRealtime(1f);
        pDmg.actualvida -= 0.5f;
        yield break;
    }

}
