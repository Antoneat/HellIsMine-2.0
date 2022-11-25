using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ConfigController : MonoBehaviour
{
    //Full Screen
    public Toggle fullScreenToggle;


    //Show FPS
    public Toggle toggleFPS;
    public TMP_Text text_FPS;
    float pollingTime = 1f;
    float time;
    int frameCount;

    void Start()
    {
        if (Screen.fullScreen)
            fullScreenToggle.isOn = true;
        else
            fullScreenToggle.isOn = false;
        
        if (text_FPS == true)
            toggleFPS.isOn = true;
        else
            toggleFPS.isOn = false;
    }

    #region FPS
    void Update()
    {
        CalculateFPS();

    }

    void CalculateFPS()
    {
        //if (toggleFPS.isOn == true)
        //    toggleFPS.enabled = true;
        //else
        //    toggleFPS.enabled = false;


        time += Time.deltaTime;

        frameCount++;

        if(time >= pollingTime)
        {
            int frameRate = Mathf.RoundToInt(frameCount / time);
            text_FPS.text = "FPS: " + frameRate.ToString();

            time -= pollingTime;
            frameCount = 0;
        }
    }

    public void ShowFPS()
    {
        toggleFPS.isOn = true;
    }

    public void OcultarFPS()
    {
        toggleFPS.isOn = false;
    }

    public void ActivateFPS(bool showFPS)
    {
        text_FPS.enabled = showFPS;
    }

    #endregion

    public void ActivateFullScreen(bool fullScreen)
    {
        Screen.fullScreen = fullScreen;
    }
}
