using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaveTrigger : MonoBehaviour
{
    public SpawnerManager spawnerManager;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            spawnerManager.doorActivator = true;
            GetComponent<BoxCollider>().enabled = false;
        }
    }
}
