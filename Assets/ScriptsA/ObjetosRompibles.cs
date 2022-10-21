using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ObjetosRompibles : MonoBehaviour
{
    public int vida = 1;
    [SerializeField] private float time;
    [SerializeField] private UnityEvent OnDestroy;
    private MeshRenderer mesh;
    private Collider collider;

    private void Awake()
    {
        mesh = GetComponent<MeshRenderer>();
        collider = GetComponent<Collider>();
    }


    private IEnumerator Muerte()
    {
        if (vida > 0) yield break;
        OnDestroy.Invoke();
        if (mesh) mesh.enabled = false;
        if (collider) collider.enabled = false;
        yield return new WaitForSeconds(time);
        Destroy(gameObject);
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("Guadana")) vida--;
        if (collider.gameObject.CompareTag("AtaqueDuro")) vida--;
        StartCoroutine(Muerte());
    }
}
