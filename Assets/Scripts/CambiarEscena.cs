using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CambiarEscena : MonoBehaviour
{
    public void ChangeScene(int SceneNumber)
    {
        SceneManager.LoadScene(SceneNumber);
        Time.timeScale = 1;
    }
}
