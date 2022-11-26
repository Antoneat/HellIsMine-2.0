using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Almas : MonoBehaviour
{
    public float curacion; // Cantidad de curacion para el player.
    public int almas; // Cantidad de almas para el player.
    public float decreaseSpeed;
    public bool decrease;
    public GameObject parent;

    void Update()
    {
        if (decrease)
        {
            DecreaseSize();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerDmg>() && other.gameObject.CompareTag("Player"))
        {
            gameObject.GetComponent<CapsuleCollider>().enabled = false;
            other.gameObject.GetComponent<PlayerDmg>().GainLife(curacion);
            if(almas != 0)
			{
                other.gameObject.GetComponent<PlayerDmg>().GainSoul(almas);
			}
            decrease = true;
            Destroy(parent, 0.25f);
        }
    }
    void DecreaseSize()
	{
        if (transform.localScale.x > 0.15)
        {
            transform.localScale -= Vector3.one * Mathf.Clamp((decreaseSpeed * Time.deltaTime), 0.1f, 1);
        }
	}
}
