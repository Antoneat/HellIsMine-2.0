using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PlayerDmg : MonoBehaviour
{
    [Header("Vida")]
    public float actualvida;
    public float maxVida = 30f;
    //public bool takingDmg;
    //public ConsolaComandosManager consolaComandos;
    public AudioSource Muerte;
    public AudioClip MuertePista;

    public int actualSouls;
    public ParticleSystem curacion;

    [Header("DmgHUD")]
    public Image overlay;
    public float duration;
    public float fadeSpeed;
    private float durationTimer;

    [Header("VFX")]
    public ParticleSystem almas;
    public ParticleSystem recibiendoDmg;

    
        
    public PlayerMovement playerMovement;

    [Header("Animator")]
    [SerializeField] private Animator anim;


    void Start()
    {
        overlay.color = new Color(overlay.color.r, overlay.color.g, overlay.color.b, 0);
        //dmgC = GameObject.FindGameObjectWithTag("damageController").GetComponent<DmgController>();
        actualvida = maxVida;
        anim = GetComponent<Animator>();
        playerMovement = GetComponent<PlayerMovement>();
        
    }

    void Update()
    {
        //consolaComandos = FindObjectOfType<ConsolaComandosManager>();

        if (actualvida <= 0)
        {
            Muerte.PlayOneShot(MuertePista);
            //playerMovement.enabled = false;
            playerMovement.maxSpeed = 0;
            anim.Play("Morir");
            Invoke(nameof(Dead), 3.20f);
        }

        if (actualvida > maxVida)
        {
            actualvida = maxVida;
            //curacion.Stop();
        }

        if (overlay.color.a > 0)
        {
            if (actualvida < 1)
                return;
            durationTimer += Time.deltaTime;
            if (durationTimer > duration)
            {
                float tempAlpha = overlay.color.a;
                tempAlpha -= Time.deltaTime * fadeSpeed;
                overlay.color = new Color(overlay.color.r, overlay.color.g, overlay.color.b, tempAlpha);
            }
        }
    }
    public void GainLife(float life)
    {
        actualvida += life;
        curacion.Play();

        if (maxVida == actualvida)
            curacion.Stop();
    }


    public void GainSoul(int soul)
    {
        actualSouls += soul;
        almas.Play();
    }

    public void LoseLife(float dmg)
    {
        //takingDmg = true;
        actualvida -= dmg;
        durationTimer = 0f;
        overlay.color = new Color(overlay.color.r, overlay.color.g, overlay.color.b, 1);
        recibiendoDmg.Play();    
    }

    public void Alma_Vfx()
    {
        almas.Play();
    }
    public void Dead()
    {
        SceneManager.LoadScene(1);
        //consolaComandos.panelReinicio.SetActive(true);
    }
}
