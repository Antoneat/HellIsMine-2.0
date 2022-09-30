using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JaulaAlmas : MonoBehaviour
{
    public Transform jaulaMasterTransform;

    public BoxCollider colliderTriggerParedes;

    public bool jaulaIsActive = false;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            jaulaMasterTransform.position = new Vector3(jaulaMasterTransform.position.x, jaulaMasterTransform.position.y + 2.8f, jaulaMasterTransform.position.z);
            colliderTriggerParedes.enabled = false;
            jaulaIsActive = true;
        }
    }
}
