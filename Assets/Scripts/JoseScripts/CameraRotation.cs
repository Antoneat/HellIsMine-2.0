using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraRotation : MonoBehaviour
{
    public Transform target;
    public float speedRotation;
    private float rotationInputs;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
       rotationInputs += Input.GetAxis("Horizontal") * speedRotation * Time.deltaTime;
    }

    private void LateUpdate()
    {
        transform.RotateAround(target.position, Vector3.up, rotationInputs);
    }
}
