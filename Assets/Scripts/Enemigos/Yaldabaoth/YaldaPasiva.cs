using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YaldaPasiva : MonoBehaviour
{

    private YaldaVida yaldaVida; // Script de la vida de Yalda
    private YaldaMov yaldaMov; // Script de el movimiento de Yalda
    private Animator anim;
    private Rigidbody rgbd;
    public int curitas; //Cantidad de veces que se curó.

    public bool curandose; // Comprobante si esta curandose.

    [Header("Enemigos")]
    public GameObject oleada1, oleada2; // Oleadas a activar cuando esté por 50 o 20 de vida.
    public int childrens1, childrens2; // Agarra la cantidad de hijos que tienen las oleadas.

    void Start()
    {
        yaldaVida = GetComponent<YaldaVida>();
        yaldaMov = GetComponent<YaldaMov>();
        anim = GetComponent<Animator>();
        rgbd = GetComponent<Rigidbody>();

        curandose = false;
        curitas = 0;
    }

    void Update()
    {
        if(yaldaVida.life <= 50 && curitas == 0 || yaldaVida.life <= 20 && curitas == 1) //Si tiene menos de 50 de vida y no se ha curado entonces... Si tiene menos de 20 de vida y se curó antes entonces...
        {
            curitas++; // Aumenta en 1 las veces que se curó.
            curandose = true; // Se pone en el estado de curandose.
			anim.Play("Curandose");

            if(curitas == 1) // Activa la 1ra oleada cuando esté curandose por 1ra vez. 
            {
                oleada1.SetActive(true);
            }
            else if(curitas == 2) // Activa la 2da oleada cuando esté curandose por 2da vez.
            {
                oleada2.SetActive(true);
            }
        }

        childrens1 = oleada1.transform.childCount;
        childrens2 = oleada2.transform.childCount;
        // Comprobante de si Scarlet mató toda la oleada antes de que Yalda se cure por completo, que pare la curación.
        if(childrens1 == 0 && curitas == 1 && curandose == true)
        {
            curandose = false;
            anim.Play("Idle");
            
            rgbd.useGravity = true;
            rgbd.isKinematic = false;
        }

        if(childrens2 == 0 && curitas == 2 && curandose == true)
        {
            curandose = false;
            anim.Play("Idle");
            
            rgbd.useGravity = true;
            rgbd.isKinematic = false;
        }
    }

    public void InicioDeCura() // Metodo puesto para animacion.
    {
        yaldaMov.attacking = false;
        yaldaMov.ResetOfTriggersAnim();
        rgbd.useGravity = false;
        rgbd.isKinematic = true;
    }

    public void Cura() // Metodo puesto para animacion.
    {
        yaldaVida.life++; //Aumenta su vida en 1.
    }

    public void FinDeCura() // Metodo puesto para animacion.
    {
        curandose = false; // Termina su estado de curación.
        rgbd.useGravity = true;
        rgbd.isKinematic = false;
    } 
}
