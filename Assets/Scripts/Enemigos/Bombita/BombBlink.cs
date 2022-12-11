using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BombBlink : MonoBehaviour
{
    public Color startColor = Color.green;
    public Color endColor = Color.black;
    public Color ogColor = Color.white;
    [Range(0, 10)]
    public float speed = 1;

    public Renderer ren;

    [Header("FeedbackVisual")]
    [SerializeField] BombController bombcon;

    int amountBlinks = 5;
    public float counter = 0;

    public void Start()
    {

    }

    public void Update()
    {
        if (bombcon.coPlay == true)
        {
            Invoke("Changecolor", 1);
        }
        else
        {
            ren.material.color = ogColor;
        }
    }


    void Changecolor()
    {
        ren.material.color = Color.Lerp(startColor, endColor, Mathf.PingPong(Time.time * speed, 1));
        Debug.Log("changing color");
    }
}

