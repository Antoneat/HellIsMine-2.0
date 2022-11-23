using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausaControler : MonoBehaviour
{
    public GameObject panelPausa, panelConfig;

    [SerializeField] bool pauseEnable;
    void Start()
    {
        pauseEnable = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Escape) && pauseEnable == false)
        {
            panelPausa.SetActive(true);
            Time.timeScale = 0;

            PlayerMovement.instanciate.capsuleCollider.enabled = false;

            pauseEnable = true;
        }
        else if(Input.GetKeyDown(KeyCode.Escape) && pauseEnable == true)
        {
            panelPausa.SetActive(false);
            Time.timeScale = 1;

            PlayerMovement.instanciate.capsuleCollider.enabled = true;
            
            pauseEnable = false;

        }
    }

    public void ClosePanelPausa()
    {
        panelPausa.SetActive(false);
        Time.timeScale = 1;

        PlayerMovement.instanciate.capsuleCollider.enabled = true;
    }

    public void OpenConfig()
    {
        panelPausa.SetActive(false);
        panelConfig.SetActive(true);
    }
    
    public void CloseConfig()
    {
        panelPausa.SetActive(true);
        panelConfig.SetActive(false);
    }
}
