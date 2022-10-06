using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LanzaVerdugo : MonoBehaviour
{
    [SerializeField] float speed;
    [SerializeField] float timeToDestroyObject;
    [SerializeField] float timeToFall;
    float timer;
    private Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        timeToFall = Random.Range(1.5f,2.2f);
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;
        if (speed != 0)
        {
            transform.position += transform.forward * (speed * Time.deltaTime);
        }
        if (timer > timeToFall)
        {
            rb.useGravity = true;
        }
        
        Destroy(this.gameObject, timeToDestroyObject);




    }

    private void OnCollisionEnter(Collision collision)
    {
        speed = 0;
    }



}
