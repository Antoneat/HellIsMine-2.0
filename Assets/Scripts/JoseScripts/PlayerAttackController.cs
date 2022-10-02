using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackController : MonoBehaviour
{
    Animator anim;
    bool isAttacking;
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        bool attack = Input.GetMouseButtonDown(0);
        bool stopAttackin = Input.GetMouseButtonUp(0);
        

        if (attack)
        {
            anim.SetBool("Attacking", true);
           
        }
        if (stopAttackin)
        {
            anim.SetBool("Attacking", false);
        }

    
    }
}
