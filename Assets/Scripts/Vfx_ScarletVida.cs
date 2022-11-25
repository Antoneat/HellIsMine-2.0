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
        if (contenedorDeParticleAlmas)
        {
            contenedorDeParticleAlmas.SetActive(false);
        }
    }

    // Update is called once per frame
    void Update()
    {
        ActivarOrbe();
    }

    public void ActivarOrbe()
    {
            almasScarlet.Play();
        if (contenedorDeParticleAlmas)
        {
            contenedorDeParticleAlmas.SetActive(true);
        }
    }
}
