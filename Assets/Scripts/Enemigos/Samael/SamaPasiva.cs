using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaPasiva : MonoBehaviour
{
    private SamaVida samaVida; // Script de la vida de Samael
    private SamaMov samaMov;
    private Animator anim;
    private Rigidbody rgbd;
    public int curitas;

    public bool curandose;


    [Header("Enemigos")]
    public GameObject oleada1, oleada2, oleada3; // Oleadas a activar cuando esté por 50 o 20 de vida.
    public int childrens1, childrens2, childrens3; // Agarra la cantidad de hijos que tienen las oleadas.


    void Start()
    {
        samaVida = GetComponent<SamaVida>();
        samaMov = GetComponent<SamaMov>();
        anim = GetComponent<Animator>();
        rgbd = GetComponent<Rigidbody>();

        curandose = false;
        curitas = 0;
    }

    void Update()
    {
        if(samaVida.vida <= 75 && curitas == 0 || samaVida.vida <= 50 && curitas == 1 || samaVida.vida <= 25 && curitas == 2) //Si tiene menos de 50 de vida y no se ha curado entonces... Si tiene menos de 20 de vida y se curó antes entonces...
        {
            curitas++; // Aumenta en 1 las veces que se curó.
            curandose = true; // Se pone en el estado de curandose.
			anim.Play("Curandose");

            if(curitas == 1) // Activa la 1ra oleada cuando esté curandose por 1ra vez. 
            {
                oleada1.SetActive(true);
            }
            if(curitas == 2) // Activa la 2da oleada cuando esté curandose por 2da vez.
            {
                oleada2.SetActive(true);
            }
            if(curitas == 3)
            {
                oleada2.SetActive(true);
            }
        }

        childrens1 = oleada1.transform.childCount;
        childrens2 = oleada2.transform.childCount;
        childrens3 = oleada3.transform.childCount;

        // Comprobante de si Scarlet mató toda la oleada antes de que Yalda se cure por completo, que pare la curación.
        if(childrens1 == 0 && curitas == 1 && curandose == true)
        {
            samaMov.attacking = false;
            curandose = false;
            anim.Play("Movement");
            
            rgbd.useGravity = true;
            rgbd.isKinematic = false;
        }

        if(childrens2 == 0 && curitas == 2 && curandose == true)
        {
            samaMov.attacking = false;
            curandose = false;
            anim.Play("Movement");
            
            rgbd.useGravity = true;
            rgbd.isKinematic = false;
        }

        if(childrens3 == 0 && curitas == 3 && curandose == true)
        {
            samaMov.attacking = false;
            curandose = false;
            anim.Play("Movement");
            
            rgbd.useGravity = true;
            rgbd.isKinematic = false;
        }
    }

    
    public void InicioDeCura() // Metodo puesto para animacion.
    {
        samaMov.attacking = true;
        samaMov.ResetOfTriggersAnim();
        rgbd.useGravity = false;
        rgbd.isKinematic = true;
    }

    public void Cura() // Metodo puesto para animacion.
    {
        samaVida.vida++; //Aumenta su vida en 1.
    }

    public void FinDeCura() // Metodo puesto para animacion.
    {
        samaMov.attacking = false;
        curandose = false; // Termina su estado de curación.
        rgbd.useGravity = true;
        rgbd.isKinematic = false;
    } 
}