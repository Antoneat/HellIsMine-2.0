using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using TMPro;
using System;

public class CameraRotationConfig : MonoBehaviour
{
    [Header("General")]
    public Transform cameraTransform;
    public CinemachineVirtualCamera cinemachineVirtualCamera;

    [Header("Textos")]
    public TMP_Text text_Xrot;
    public TMP_Text text_Yrot;
    public TMP_Text text_Zrot;

    [Header("Rotación")]
    private float xRot;
    private float yRot;
    private float zRot;


    private void Awake()
    {
        xRot = cameraTransform.eulerAngles.x;
        yRot = cameraTransform.eulerAngles.y;
        zRot = cameraTransform.eulerAngles.z;
    }
    void Start()
    {
        text_Xrot.text = "X:" + cameraTransform.eulerAngles.x;
        text_Yrot.text = "Y:" + cameraTransform.eulerAngles.y;
        text_Zrot.text = "Z:" + cameraTransform.eulerAngles.z;
    }

    #region Rotacion X
    public void MasUnoRotX()
    {
        xRot++;
        text_Xrot.text = "X:" + xRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }
    public void ChangeRotX(string rotX)
    {
        int rotXNew = Int32.Parse(rotX);
        xRot = rotXNew;

        text_Xrot.text = "X:" + rotX;

        cameraTransform.eulerAngles = new Vector3(rotXNew, yRot, zRot);
    }
    public void MenosUnoRotX()
    {
        xRot--;
        text_Xrot.text = "X:" + xRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }

    #endregion

    #region Rotacion Y
    public void MasUnoRotY()
    {
        yRot++;
        text_Yrot.text = "Y:" + yRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }
    public void ChangeRotY(string rotY)
    {
        int rotYNew = Int32.Parse(rotY);
        yRot = rotYNew;

        text_Yrot.text = "Y:" + rotY;

        cameraTransform.eulerAngles = new Vector3(xRot, rotYNew, zRot);
    }
    public void MenosUnoRotY()
    {
        yRot--;
        text_Yrot.text = "Y:" + yRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }

    #endregion

    #region Rotacion Z
    public void MasUnoRotZ()
    {
        zRot++;
        text_Zrot.text = "Z:" + zRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }
    public void ChangeRotZ(string rotZ)
    {
        int rotZNew = Int32.Parse(rotZ);
        zRot = rotZNew;

        text_Zrot.text = "Z:" + rotZ;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, rotZNew);
    }
    public void MenosUnoRotZ()
    {
        zRot--;
        text_Zrot.text = "Z:" + zRot;

        cameraTransform.eulerAngles = new Vector3(xRot, yRot, zRot);
    }

    #endregion
}