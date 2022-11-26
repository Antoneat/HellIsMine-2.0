using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReactivateDash : MonoBehaviour
{
    [SerializeField] PlayerDash playerDash;
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            playerDash.enabled = true;
        }
    }
}
