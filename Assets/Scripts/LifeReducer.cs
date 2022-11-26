using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LifeReducer : MonoBehaviour
{
    public PlayerDmg player;
    // Start is called before the first frame update
    void Start()
    {
        Invoke("ReduceLife", 0.01f);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void ReduceLife()
	{
        player.actualvida = 20;
	}
}
