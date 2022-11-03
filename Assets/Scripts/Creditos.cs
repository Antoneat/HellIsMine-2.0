using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Creditos : MonoBehaviour
{
    public float seg;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        TimerUpdate();
    }

    public void TimerUpdate()
    {
        seg -= Time.deltaTime;

        if(seg <= 0)
        {
            SceneManager.LoadScene(0);
        }
    }
}
