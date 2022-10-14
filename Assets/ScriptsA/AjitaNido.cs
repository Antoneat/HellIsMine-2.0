using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AjitaNido : MonoBehaviour
{
    public int vida = 1;
    public bool dead;
    public GameObject enemy;
    public GameObject ajitaNido;
    void Update()
    {
        InvokeBomb();
        Muerte();
    }

    private void Muerte()
    {
        if (vida <= 0)
        {
            dead = true;
            Destroy(gameObject);
        }
    }

    void SummonBomb()
    {
        if (!dead)
        {
            Instantiate(enemy, ajitaNido.transform.position, Quaternion.identity);

        }
    }

    void InvokeBomb()
    {
        Invoke("SummonBomb", 0.75f);
    }
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Guadana")) vida--;

        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
    }
}

