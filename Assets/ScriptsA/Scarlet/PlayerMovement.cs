using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float speed;
    public float maxSpeed;

    public Rigidbody rgbd;
    public Animator anim;

    public Vector3 lastTransform;
    public Transform playerTransform;

    void Start()
    {
        rgbd = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
        playerTransform = GetComponent<Transform>();
    }

    void FixedUpdate()
    {
        Move();
        PlayerRotation();
    }

    public void Move()
    {
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");

        rgbd.velocity = new Vector3(horizontal * speed * Time.fixedDeltaTime, rgbd.velocity.y, vertical * speed * Time.fixedDeltaTime);

        if (rgbd.velocity.magnitude > maxSpeed)
        {
            rgbd.velocity = Vector3.ClampMagnitude(rgbd.velocity, maxSpeed);
        }

        if (rgbd.velocity.x != 0 || rgbd.velocity.z != 0)
        {
            anim.SetBool("Run", true);
        }
        else
        {
            anim.SetBool("Run", false);
        }

        Debug.Log(rgbd.velocity.x);
        Debug.Log(rgbd.velocity.z);
    }

    public void PlayerRotation()
    {
        if (rgbd.velocity.normalized != lastTransform && rgbd.velocity != Vector3.zero)
        {
            lastTransform = rgbd.velocity.normalized;
        }

        playerTransform.rotation = Quaternion.LookRotation(new Vector3 (lastTransform.x, 0, lastTransform.z));
    }
}
