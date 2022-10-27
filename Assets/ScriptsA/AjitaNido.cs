using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AjitaNido : MonoBehaviour
{
    public int vida = 1;
    public bool dead;
    public GameObject enemy;
    public GameObject ajitaNido;
    public List<GameObject> maxChildren;
    public int maxNumber = 5;
    public bool isPlayerInUwU;

    private void Start()
    {
        maxChildren = new List<GameObject>();
	}
    void Update()
    {
        if (isPlayerInUwU)
        {
            InvokeBomb();
        }
        Muerte();

        if (maxChildren[0] == null)
        {
            maxChildren.RemoveAt(0);
        }
        if (maxChildren[1] == null)
        {
            maxChildren.RemoveAt(1);
        }
        if (maxChildren[2] == null)
        {
            maxChildren.RemoveAt(2);
        }
        if (maxChildren[3] == null)
        {
            maxChildren.RemoveAt(3);
        }
        if (maxChildren[4] == null)
        {
            maxChildren.RemoveAt(4);
        }
        if (maxChildren[5] == null)
        {
            maxChildren.RemoveAt(5);
        }
    }

    private void Muerte()
    {
        if (vida <= 0)
        {
            dead = true;
            //Destroy(gameObject);
        }
    }

    void SummonBomb()
    {
        if (!dead && maxChildren.Count < maxNumber)
        {
            GameObject obj = Instantiate(enemy, ajitaNido.transform.position, Quaternion.identity);
            maxChildren.Add(obj);
        }
    }

    void InvokeBomb()
    {
        Invoke("SummonBomb", 5f);
    }
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Guadana")) vida--;

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
    }

}

