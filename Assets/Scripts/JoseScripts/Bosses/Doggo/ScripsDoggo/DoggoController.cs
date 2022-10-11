using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DoggoController : MonoBehaviour
{
    Animator anim;
    NavMeshAgent agent;
    public int id;
    public bool lanzarMordida;


    void Start()
    {
        anim = GetComponent<Animator>();
        agent = GetComponent<NavMeshAgent>();
        GameEvents.currentGEvent.combatTriggerExit += Activate;

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void Activate(int id)
    {
        if(id == this.id)
        {
            anim.SetTrigger("Inicio");
        }
    }


}
