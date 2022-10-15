using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtCamera : MonoBehaviour
{
    public Camera cam;

    public GameObject objetoMirar;

    private void Awake()
    {
        cam = FindObjectOfType<Camera>();
    }
    void Update()
    {
        objetoMirar.transform.LookAt(cam.transform);
    }
}
