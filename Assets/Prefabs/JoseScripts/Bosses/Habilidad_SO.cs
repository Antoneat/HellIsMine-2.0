using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Habilidad_SO : ScriptableObject
{
    //protected static object _calamarController;
    public new string name;
    public float tiempoCambioDeHabilidad;
    public float duracionHabilidad;
    public float maxDistanciaActivacion;
    public float minDistanciaActivacion;


    public virtual void Activate (GameObject parent)
    {

    }
}
