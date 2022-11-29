using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameJolt.API;
using GameJolt;

public class GameJoltManager : MonoBehaviour
{
    

    public void LoginButton()
    {
        //GameJoltAPI.Instance
        GameJolt.UI.GameJoltUI.Instance.ShowSignIn();
    }
}
