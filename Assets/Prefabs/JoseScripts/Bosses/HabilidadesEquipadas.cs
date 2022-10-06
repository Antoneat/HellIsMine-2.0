using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HabilidadesEquipadas : MonoBehaviour
{
    public Habilidad_SO[] ability;
    [SerializeField] float cambioDeHabilidadTiempo;
    public float habilidadActivaTiempo;
    GameObject player;
    public float distance;
    [SerializeField] private bool casting = false;
    int index;
    public bool attacking = false;
    

    private void Start()
    {
        player = GameObject.FindWithTag("Player");

    }

    enum AbilityState
    {
        ready,
        active,
        cooldown
        
    }
    AbilityState state = AbilityState.ready;
    
    
    void Update()
    {
        index = Random.Range(0,ability.Length);
        distance = Vector3.Distance(transform.position, player.transform.position);
        switch (state)
        {
            case AbilityState.ready:
                if (distance <= ability[index].maxDistanciaActivacion && distance>= ability[index].minDistanciaActivacion && casting == false) { 
                ability[index].Activate(gameObject);
                state = AbilityState.active;
                habilidadActivaTiempo = ability[index].duracionHabilidad;
                 }
            break;
            case AbilityState.active:
                if (habilidadActivaTiempo > 0 /* && attacking == false */) // && restmode == false
                {

                    casting = true;                   
                    habilidadActivaTiempo -= Time.deltaTime;
                    //attacking = true;
                    
                }
                else
                {
                    state = AbilityState.cooldown;
                    cambioDeHabilidadTiempo = ability[index].tiempoCambioDeHabilidad;
                    //resttime = 0;
                    //casting = false;
                }
            break;
            case AbilityState.cooldown:
                if (cambioDeHabilidadTiempo > 0 )
                {
                  cambioDeHabilidadTiempo -= Time.deltaTime;
                }
                else
                {
                    //attacking = false;
                    //restmode = true; que empiece la cuenta de tiempo ga
                    //resttime += Time.deltaTime;
                    casting = false;
                    state = AbilityState.ready;
                }
                break;
        }
    }
}
