using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerAnimationEvents : MonoBehaviour
{
    // Start is called before the first frame update
    NavMeshAgent agent;
    float agentSpeedInspector;
    public GameObject SlashVFX_Object;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        agentSpeedInspector = agent.speed;
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ActivateSlashVfx()
    {
        SlashVFX_Object.SetActive(true);
    }
    public void DesactivateSlashVfx()
    {
        SlashVFX_Object.SetActive(false);
    }

    public void DesactivateSpeed()
    {
        agent.speed = 1f;
    }

    public void ActivateSpeed()
    {
        agent.speed = agentSpeedInspector;
    }
}
