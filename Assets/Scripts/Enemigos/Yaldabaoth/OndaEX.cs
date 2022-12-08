using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OndaEX : MonoBehaviour
{
    public float timer;
    void Start()
    {
        Destroy(gameObject, timer);
    }

    void Update()
    {
        transform.localScale = new Vector3(transform.localScale.x + Time.deltaTime * 5f, transform.localScale.y, transform.localScale.z + Time.deltaTime * 5f);
    }
}
