using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FondoFondo : MonoBehaviour
{
    public RectTransform backgroundBox;

    void Update()
    {
        if(backgroundBox.localScale == new Vector3(1, 1, 1))
        {
            gameObject.transform.localScale = new Vector3(1, 1, 1);
        }
        if(backgroundBox.localScale == new Vector3(0, 0, 0))
        {
            gameObject.transform.localScale = new Vector3(0, 0, 0);
        }
    }
}
