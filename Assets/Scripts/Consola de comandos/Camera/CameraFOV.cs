using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using TMPro;
using System;

public class CameraFOV : MonoBehaviour
{
    [Header("General")]
    public Transform cameraTransform;
    public CinemachineVirtualCamera cinemachineVirtualCamera;

    [Header("Textos")]
    public TMP_Text text_FOV;

    [Header("FOV")]
    private float FOV;

    private void Awake()
    {
        FOV = cinemachineVirtualCamera.m_Lens.FieldOfView;
    }
    void Start()
    {
        text_FOV.text = "FOV:" + cinemachineVirtualCamera.m_Lens.FieldOfView;
    }

    public void MasUnoFOV()
    {
        FOV++;
        text_FOV.text = "#:" + FOV;

        cinemachineVirtualCamera.m_Lens.FieldOfView = FOV;
    }
    public void ChangeFOVCamara(string FOVCamara)
    {
        int FOVCamaraNew = Int32.Parse(FOVCamara);

        cinemachineVirtualCamera.m_Lens.FieldOfView = FOVCamaraNew;
        text_FOV.text = "#:" + FOVCamara;
    }
    public void MenosUnoFOV()
    {
        FOV--;
        text_FOV.text = "#:" + FOV;

        cinemachineVirtualCamera.m_Lens.FieldOfView = FOV;
    }

}
