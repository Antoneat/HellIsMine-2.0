using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovement : MonoBehaviour
{
    public float speed;
    public float maxSpeed;

    public Vector3 lastTransform;

    [Header("Componentes")]
    public Rigidbody rgbd;
    public Transform playerTransform;
    private PlayerDash playerDash;

    [Header("Animator")]
    public Animator anim;
    public float velocityOfMovement;
    public float acceleration;
    public float deceleration;

    void Start()
    {
        rgbd = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
        playerTransform = GetComponent<Transform>();
        playerDash = GetComponent<PlayerDash>();
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

        rgbd.velocity = new Vector3(horizontal * speed * Time.fixedDeltaTime, 0, vertical * speed * Time.fixedDeltaTime);

        if (rgbd.velocity.magnitude > maxSpeed)
        {
            rgbd.velocity = Vector3.ClampMagnitude(rgbd.velocity, maxSpeed);
        }

        if (rgbd.velocity.magnitude != 0 && velocityOfMovement < 1.0f && playerDash.isDashing == false)
        {
            velocityOfMovement += Time.deltaTime * acceleration;
        }
        else if (rgbd.velocity.magnitude == 0 && velocityOfMovement > 0.0f)
        {
            velocityOfMovement -= Time.deltaTime * deceleration;
        }

        if (velocityOfMovement < 0.0f)
        {
            velocityOfMovement = 0.0f;
        }

        anim.SetFloat("Run", velocityOfMovement);

        Debug.Log(rgbd.velocity.x);
        Debug.Log(rgbd.velocity.z);
    }

    public void PlayerRotation()
    {
        if (rgbd.velocity.normalized != lastTransform && rgbd.velocity != Vector3.zero)
        {
            lastTransform = rgbd.velocity.normalized;
        }

        if (rgbd.velocity != Vector3.zero)
        {
            playerTransform.rotation = Quaternion.LookRotation(new Vector3(rgbd.velocity.normalized.x, 0, rgbd.velocity.normalized.z));
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Nivel 1"))
        {
            SceneManager.LoadScene("WhiteBlocking 2");
        }
    }
}
