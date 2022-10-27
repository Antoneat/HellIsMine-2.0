using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogeFinish : MonoBehaviour
{
    void Update()
    {
        if(this != isActiveAndEnabled) Instantiate(this);
    }
    public void Finish()
    {
        this.gameObject.SetActive(false);
    }
}
