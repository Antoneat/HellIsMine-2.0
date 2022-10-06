using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausaControler : MonoBehaviour
{
    public GameObject panelPausa;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Escape))
        {
            panelPausa.SetActive(true);
            Time.timeScale = 0;
        }
    }

    public void ClosePanelPausa()
    {
        panelPausa.SetActive(false);
        Time.timeScale = 1;
    }
}
