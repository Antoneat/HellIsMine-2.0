using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColliderTriggerEvent : MonoBehaviour
{
    public int id;

    private void Start()
    {
       
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.CompareTag("Player"))
        {
            GameEvents.currentGEvent.StartCombatTriggerExit(id);
            Destroy(this.gameObject);
        }
    }

}
