using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IndicadorRotacion : MonoBehaviour
{
    Vector3 objetivo;

    [SerializeField] Camera cameraMain;


    void Update()
    {

        RotarIndicador();
        //objetivo = cameraMain.ScreenToWorldPoint(Input.mousePosition);

        //float anguloRadianes = Mathf.Atan2(objetivo.y - transform.position.y, objetivo.x - transform.position.x);
        //float anguloGrados = (180 / Mathf.PI) * anguloRadianes - 90;
        //transform.rotation = Quaternion.Euler(0, 0, anguloGrados);
    }

    public void RotarIndicador()
    {
        Vector3 positionOnScreen = Camera.main.WorldToViewportPoint(transform.position);
        Vector3 mouseOnScreen = (Vector2)Camera.main.ScreenToViewportPoint(Input.mousePosition);

        Vector3 direction = mouseOnScreen - positionOnScreen;

        float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg - 90f;
        transform.rotation = Quaternion.Euler(new Vector3(0, -angle, 0));
    }
}
