
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyJaulaAlmas : MonoBehaviour
{
    public BoxCollider colliderDestroy;
    public JaulaAlmas jaulaAlmas;

    void Start()
    {
        colliderDestroy.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(jaulaAlmas.jaulaIsActive == true)
        {
            colliderDestroy.enabled = true;
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Guadana"))
        {
            //Destroy(this.gameObject);
        }
    }
}
