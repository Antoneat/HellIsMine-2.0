using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ConfigController : MonoBehaviour
{


    //Show FPS
    public Toggle toggleFPS;
    public TMP_Text text_FPS;
    float pollingTime = 1f;
    float time;
    int frameCount;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        CalculateFPS();

    }

    void CalculateFPS()
    {
        if (toggleFPS.isOn == true)
            toggleFPS.enabled = true;
        else
            toggleFPS.enabled = false;


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
}
