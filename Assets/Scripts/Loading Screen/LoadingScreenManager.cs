using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class LoadingScreenManager : MonoBehaviour
{
    public TMP_Text text_Consejo;

    public string[] consejos;

    public static LoadingScreenManager instanciate;

    private void Awake()
    {
        instanciate = this;
    }
    void Start()
    {
        //text_Consejo.text = consejos[Random.Range(0,10)];        
    }

    public void ReloadText()
    {
        text_Consejo.text = consejos[Random.Range(0, 10)];
    }
}
