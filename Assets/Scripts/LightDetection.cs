using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightDetection : MonoBehaviour
{
    public GameObject target;
    public Camera cam;
    public GameObject lights;
    // Start is called before the first frame update

    private bool IsVisible(Camera c, GameObject target)
	{
        var planes = GeometryUtility.CalculateFrustumPlanes(c);
        var point = target.transform.position;

        foreach(var plane in planes)
		{
            if(plane.GetDistanceToPoint(point) < 0)
			{
                return false;
			}
		}
        return true;
	}
    void Start()
    {
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
    }

    // Update is called once per frame
    void Update()
    {
        if(IsVisible(cam, target))
		{
            lights.SetActive(true);
		}
        else
		{
            lights.SetActive(false);
		}
    }
}
