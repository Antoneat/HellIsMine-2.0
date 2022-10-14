using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovimientoCamera : MonoBehaviour
{
    public Transform cameraMaster;
    public MainMenuController menuController;

    public float transitionSpeedMp;

    [Header("Vistas")]
    public Transform[] Posiciones;

    

    void Awake()
    {
        
    }

    private void LateUpdate()
    {
        transform.position = Vector3.Lerp(transform.position, cameraMaster.position, Time.deltaTime * transitionSpeedMp);

        Vector3 currentAngle = new Vector3(
            Mathf.Lerp(transform.rotation.eulerAngles.x, cameraMaster.transform.rotation.eulerAngles.x,
            Time.deltaTime * transitionSpeedMp),

            Mathf.Lerp(transform.rotation.eulerAngles.y, cameraMaster.transform.rotation.eulerAngles.y,
            Time.deltaTime * transitionSpeedMp),

            Mathf.Lerp(transform.rotation.eulerAngles.z, cameraMaster.transform.rotation.eulerAngles.z,
            Time.deltaTime * transitionSpeedMp)

            );

        transform.eulerAngles = currentAngle;
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "cam_Inicial")
        {
            menuController.menuInicial.SetActive(true);
        }
        else if (other.gameObject.tag == "cam_BotonesPrincipal")
        {
            menuController.panelBotonesPrincipal.SetActive(true);

        }
        else if (other.gameObject.tag == "cam_Opciones")
        {
            menuController.panelOpciones.SetActive(true);
        }
    }
    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "cam_Inicial")
        {
            menuController.menuInicial.SetActive(false);
        }
        else if (other.gameObject.tag == "cam_BotonesPrincipal")
        {
            menuController.panelBotonesPrincipal.SetActive(false);

        }
        else if (other.gameObject.tag == "cam_Opciones")
        {
            menuController.panelOpciones.SetActive(false);
        }
    }

}
