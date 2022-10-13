using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerDmg : MonoBehaviour
{
    [Header("Vida")]
    public float actualvida;
    public float maxVida = 30f;
    public AudioSource recibirDa�oUno;
    public AudioSource recibirDa�oDos;
    public AudioSource muerte;

    private DmgController dmgC;

    void Start()
    {
        actualvida = 30f;
        //dmgC = GameObject.FindGameObjectWithTag("damageController").GetComponent<DmgController>();
        //actualvida = maxVida;
    }

    void Update()
    {
        if (actualvida <= 0)
        {
            Dead();
            muerte.Play();
        }

        if (actualvida > maxVida)
        {
            actualvida = maxVida;
        }

    }

    public void GainLife(float life) => actualvida += life;

    public void LoseLife(float dmg) => actualvida -= dmg;

    public void Dead()
    {
        Destroy(gameObject);
        SceneManager.LoadScene("WhiteBlocking 1");
    }

    private void OnTriggerEnter(Collider collider)
    {

        if (collider.gameObject.CompareTag("AtkBomb"))
        {
            recibirDa�oDos.Play();
            
            actualvida -= 0.25f; //* mecanica tinoco: dmgC.dmgMultiplier; andre no jodas tkm
        }
        if (collider.gameObject.CompareTag("MordiscoEnemy1"))
        {
            recibirDa�oUno.Play();
            actualvida -= 1.75f;
        }
        if (collider.gameObject.CompareTag("Lanza"))
        {
            recibirDa�oDos.Play();
            actualvida -= 2.5f;
        }
    }
}
