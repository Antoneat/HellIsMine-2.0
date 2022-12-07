using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FondoFondo : MonoBehaviour
{
    public RectTransform backgroundBox;

    public bool coleccionableAgarrado;

    void Update()
    {
        if(backgroundBox.localScale == new Vector3(1, 1, 1))
        {
            if(coleccionableAgarrado == false)
            {
                gameObject.transform.localScale = new Vector3(1, 1, 1);
            }
            return;
        }
        if(backgroundBox.localScale == new Vector3(0, 0, 0))
        {
            gameObject.transform.localScale = new Vector3(0, 0, 0);
            coleccionableAgarrado = false;
        }
    }

    public void ColeccionableAgarrado(bool i)
    {
        coleccionableAgarrado = i;
    }
}
