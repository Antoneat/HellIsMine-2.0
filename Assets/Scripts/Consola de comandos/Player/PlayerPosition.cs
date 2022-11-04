using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;

public class PlayerPosition : MonoBehaviour
{
    [Header("Referencias")]
    public PlayerMovement playerMovement;

    [Header("Generales")]
    public Transform scarletTransform;

    [Header("Textos")]
    public TMP_Text text_Xpos;
    public TMP_Text text_Ypos;
    public TMP_Text text_Zpos;

    //[Header("Posición")]
    private float xPos;
    private float yPos;
    private float zPos;

    private void Awake()
    {
        xPos = scarletTransform.position.x;
        yPos = scarletTransform.position.y;
        zPos = scarletTransform.position.z;
    }

    private void Update()
    {
        playerMovement = FindObjectOfType<PlayerMovement>();
        scarletTransform = GameObject.FindGameObjectWithTag("Player").transform;
    }

    void Start()
    {
        //Textos posiciones
        text_Xpos.text = "X:" + scarletTransform.position.x;
        text_Ypos.text = "Y:" + scarletTransform.position.y;
        text_Zpos.text = "Z:" + scarletTransform.position.z;
    }

    #region Posicion X
    public void MasUnoPosX()
    {
        xPos++;
        text_Xpos.text = "X:" + xPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }
    public void ChangePosX(string posX)
    {
        int posXNew = Int32.Parse(posX);
        xPos = posXNew;

        text_Xpos.text = "X:" + posX;

        scarletTransform.position = new Vector3(posXNew, yPos, zPos);
    }
    public void MenosUnoPosX()
    {
        xPos--;
        text_Xpos.text = "X:" + xPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }

    #endregion

    #region Posicion Y
    public void MasUnoPosY()
    {
        yPos++;
        text_Ypos.text = "Y:" + yPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }
    public void ChangePosY(string posY)
    {
        int posYNew = Int32.Parse(posY);
        yPos = posYNew;

        text_Ypos.text = "Y:" + posY;

        scarletTransform.position = new Vector3(xPos, posYNew, zPos);
    }
    public void MenosUnoPosY()
    {
        yPos--;
        text_Ypos.text = "Y:" + yPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }
    #endregion

    #region Posicion Z
    public void MasUnoPosZ()
    {
        zPos++;
        text_Zpos.text = "Z:" + zPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }
    public void ChangePosZ(string posZ)
    {
        int posZNew = Int32.Parse(posZ);
        zPos = posZNew;

        text_Zpos.text = "Z:" + posZ;

        scarletTransform.position = new Vector3(xPos, yPos, posZNew);
    }
    public void MenosUnoPosZ()
    {
        zPos--;
        text_Zpos.text = "Z:" + zPos;

        scarletTransform.position = new Vector3(xPos, yPos, zPos);
    }

    #endregion
}
