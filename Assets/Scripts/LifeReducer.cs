using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LifeReducer : MonoBehaviour
{
    public PlayerDmg player;
    public PlayerPasarNivel playerPasarNivel;
    // Start is called before the first frame update
    void Start()
    {
        Invoke("ReduceLife", 0.01f);
    }

    void ReduceLife()
	{
        if(playerPasarNivel.terrenoValor == 0)
        {
            player.actualvida = 20;
        }
	}
}
