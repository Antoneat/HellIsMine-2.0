using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControllerMovement : MonoBehaviour
{
    // Start is called before the first frame update
    Camera _camera;
    public LayerMask movementLayer;
    PlayerMovementNavMesh playerMovement;

    void Start()
    {
        _camera = Camera.main;
        playerMovement = GetComponent<PlayerMovementNavMesh>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(1))
        {
            Ray ray = _camera.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100, movementLayer))
            {
                playerMovement.MoveToPoint(hit.point);
            }
        }
    }
}
