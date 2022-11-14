using UnityEngine;
using UnityEngine.Events;

public class Enable : MonoBehaviour
{
    [SerializeField] UnityEvent Efectos;
    private void Start()
    {
        Efectos.Invoke();

    }

}
