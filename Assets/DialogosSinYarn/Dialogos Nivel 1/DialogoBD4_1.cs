using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogoBD4_1 : MonoBehaviour
{
    public float time;
    public WaveTrigger waveTrigger;

    public void EsoDeEso()
    {
        StartCoroutine(Eso());
    }

    public IEnumerator Eso()
    {
        yield return new WaitForSeconds(time);

        waveTrigger.spawnerManager.doorActivator = true;
        GetComponent<BoxCollider>().enabled = false;
    }
}
