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
    public float cooldownSpawn;
    public bool isPlayerInUwU;
    public bool hasBeenCharged;

    private void Start()
    {
        maxChildren = new List<GameObject>();
        hasBeenCharged = true;
	}
    void Update()
    {
        if (isPlayerInUwU && hasBeenCharged)
        {
            InvokeBomb();
        }
        if(maxChildren.Count >= maxNumber)
		{
            hasBeenCharged = false;
		}
        if (vida <= 0)
        {
            Muerte();
        }

        if (maxChildren[0] == null)
        {
            maxChildren.RemoveAt(0);
            StartCoroutine(startSummoning());
        }
        if (maxChildren[1] == null)
        {
            maxChildren.RemoveAt(1);
            StartCoroutine(startSummoning());
        }
        if (maxChildren[2] == null)
        {
            maxChildren.RemoveAt(2);
            StartCoroutine(startSummoning());
        }
        if (maxChildren[3] == null)
        {
            maxChildren.RemoveAt(3);
            StartCoroutine(startSummoning());
        }
        if (maxChildren[4] == null)
        {
            maxChildren.RemoveAt(4);
            StartCoroutine(startSummoning());
        }
        if (maxChildren[5] == null)
        {
            maxChildren.RemoveAt(5);
            StartCoroutine(startSummoning());
        }
    }

    private void Muerte()
    {
        dead = true;
        //Destroy(gameObject);
    }

    void SummonBomb()
    {
        if (!dead && maxChildren.Count < maxNumber)
        {
            GameObject obj = Instantiate(enemy, ajitaNido.transform.position, Quaternion.identity);
            maxChildren.Add(obj);
        }
    }

    public IEnumerator startSummoning()
	{
        yield return new WaitForSeconds(cooldownSpawn);
        hasBeenCharged = true;
	}

    void InvokeBomb()
    {
        Invoke("SummonBomb", 3f);
    }
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Guadana")) vida--;

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
    }

}

