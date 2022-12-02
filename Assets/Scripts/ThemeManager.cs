using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThemeManager : MonoBehaviour
{
    public GameObject calmTheme;
    public GameObject combatTheme;
    public bool inBattle;
    // Start is called before the first frame update
    void Start()
    {
        Invoke("StartSong", 0.1f);
        inBattle = false;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void StartSong()
	{
        calmTheme.GetComponent<AudioSource>().enabled = true;
        combatTheme.GetComponent<AudioSource>().enabled = true;
	}

    public void ChangeTheme()
	{
        inBattle = !inBattle;
        calmTheme.GetComponent<Animator>().SetBool("InBattle", inBattle);
        combatTheme.GetComponent<Animator>().SetBool("InBattle", inBattle);
	}
}
