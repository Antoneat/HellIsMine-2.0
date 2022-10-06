using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpheraQuemaduraAlma : MonoBehaviour
{
    [SerializeField] float speed;
    //public float damage;
    [SerializeField] float timeToDestroyObject;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (speed != 0)
        {
            transform.position += transform.forward * (speed * Time.deltaTime);
        }
        Destroy(this.gameObject, timeToDestroyObject);
    }
}
