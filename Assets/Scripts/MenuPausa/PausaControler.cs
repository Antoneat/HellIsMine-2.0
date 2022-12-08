using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausaControler : MonoBehaviour
{
    public GameObject panelPausa, panelConfig;

    public bool pauseEnable;
    [SerializeField] bool configEnable;

    public static PausaControler instance;

    private void Awake()
    {
        instance = this;
    }
    void Start()
    {
       pauseEnable = false;
       configEnable = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && pauseEnable == false && ConsolaComandosManager.instance.comandosEnable == false)
        {
            panelPausa.SetActive(true);
            Time.timeScale = 0;

            PlayerMovement.instanciate.capsuleCollider.enabled = false;

            pauseEnable = true;
        }
        else if (Input.GetKeyDown(KeyCode.Escape) && panelPausa == true && configEnable == false)
        {
            //panelPausa.SetActive(false);
            //Time.timeScale = 1;

            //PlayerMovement.instanciate.capsuleCollider.enabled = true;

            //pauseEnable = false;

            ClosePanelPausa();

        }
    }

    public void ClosePanelPausa()
    {
        panelPausa.SetActive(false);
        Time.timeScale = 1;

        PlayerMovement.instanciate.capsuleCollider.enabled = true;

        pauseEnable = false;
    }

    public void OpenConfig()
    {
        panelPausa.SetActive(false);
        panelConfig.SetActive(true);
        configEnable = true;
    }
    
    public void CloseConfig()
    {
        panelPausa.SetActive(true);
        panelConfig.SetActive(false);
        configEnable = false;
    }
}
