using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlmasParent : MonoBehaviour
{
    public float moveSpeed;
    public Almas almaScript;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        GameObject player = GameObject.FindGameObjectWithTag("PlayerPivot");
        transform.position = Vector3.MoveTowards(transform.position, player.transform.position, moveSpeed * Time.deltaTime);
        transform.LookAt(player.transform);
    }
}
