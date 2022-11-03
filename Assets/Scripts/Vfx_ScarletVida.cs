using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Vfx_ScarletVida : MonoBehaviour
{
    public GameObject contenedorDeParticleAlmas;
    public ParticleSystem almasScarlet;
    // Start is called before the first frame update
    void Start()
    {
        contenedorDeParticleAlmas.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        ActivarOrbe();
        SeguirScarlet();
    }

    public void ActivarOrbe()
    {
        almasScarlet.Play();
        contenedorDeParticleAlmas.SetActive(true);
    }
    

    public void SeguirScarlet()
    {
        Debug.Log("Ola");
    }
}
