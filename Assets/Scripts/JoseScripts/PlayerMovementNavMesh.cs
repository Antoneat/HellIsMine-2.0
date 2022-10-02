using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class PlayerMovementNavMesh : MonoBehaviour
{
    
    const float smoothLikeButterTimeAnimation = .1f;
    NavMeshAgent agent;
    Animator anim;
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();
        
    }

    // Update is called once per frame
    void Update()
    {
        bool isDashing = Input.GetKeyUp(KeyCode.Space);

        if (isDashing)
        {
            anim.SetTrigger("Roll");
        }

        float speedPercent = agent.velocity.magnitude / agent.speed;
        anim.SetFloat("speed", speedPercent, smoothLikeButterTimeAnimation, Time.deltaTime);
    }

    public void MoveToPoint(Vector3 point)
    {
        agent.SetDestination(point);

    }


}
