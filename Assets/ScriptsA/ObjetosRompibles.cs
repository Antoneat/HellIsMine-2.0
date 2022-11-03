using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ObjetosRompibles : MonoBehaviour
{
    public int vida = 1;
    [SerializeField] private float time;
    [SerializeField] private UnityEvent OnDestroy;
    private MeshRenderer[] mesh ;
    private Collider[] collider;
    [SerializeField] private List<GameObject> vfx = new List<GameObject>();
    [SerializeField] private GameObject spawnPointVfx;

    private void Awake()
    {
        mesh = GetComponentsInChildren<MeshRenderer>();
        collider = GetComponentsInChildren<Collider>();

    }


    private IEnumerator Muerte()
    {
        if (vida > 0) yield break;
        OnDestroy.Invoke();

        foreach (var item in mesh) item.enabled = false;

        foreach (var item in collider) item.enabled = false;
        
        
        yield return new WaitForSeconds(time);
        Destroy(gameObject);
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Guadana")) vida--;
        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
        StartCoroutine(Muerte());
    }

    public void SpawnVFX()
	{
        foreach(GameObject i in vfx)
		{
            GameObject obj = Instantiate(i);
            obj.transform.position = spawnPointVfx.transform.position;
		}
	}
}
