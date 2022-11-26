using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BuscadorLife : MonoBehaviour
{
    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;
    public GameObject SoulVFX;

    public Animator animator;
    public GameObject mainBuscador;

    public AudioSource Source;
    public AudioClip MuertePista;

    [SerializeField] UnityEvent DmgSound;
    

    //public ParticleSystem almas;


    private void Start()
    {
        life = maxLife;
    }

    public void TakeDmg(float dmg)
    {
        life -= dmg;
        DmgSound.Invoke();
        if (life <= 0)
        {
            GameObject player = GameObject.Find("ScarletFinal");
            GameObject obj = Instantiate(SoulVFX);
            obj.transform.position = transform.position;
            obj.GetComponent<AlmasParent>().almaScript.curacion = healAmount;
            obj.GetComponent<AlmasParent>().almaScript.almas = soulAmount;

            //FALTAN LAS ALMAS
            //player.GetComponent<PlayerDmg>().Alma_Vfx();
            Source.PlayOneShot(MuertePista);
            animator.SetTrigger("Death");
        }
    }

    public void MuertePerro()
    {
        Destroy(mainBuscador);
    }
}