using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class VerdugoLife : MonoBehaviour
{
    public VariableManagerVerdugo managerVerdugo;

    public float life;
    public float maxLife;

    public float healAmount;

    public int soulAmount;
    public GameObject SoulVFX;

    public AudioSource DeadSource,LifeSource;
    public AudioClip DeadPista;

    [SerializeField] UnityEvent DmgSound;

    //public ParticleSystem almas;


    private void Start()
    {
        maxLife = life;
        
        ChangeLifeVerdugo();
        ChangeHealtAmountVerdugo();
        ChangeSoulAmountVerdugo();

        managerVerdugo.OnValueChange += ChangeLifeVerdugo;
        managerVerdugo.OnValueChange += ChangeHealtAmountVerdugo;
        managerVerdugo.OnValueChange += ChangeSoulAmountVerdugo;
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
            //player.GetComponent<PlayerDmg>().Alma_Vfx
            DeadSource.PlayOneShot(DeadPista);
            LifeSource.Stop();
            MuertePerro();
        }
    }

    void ChangeLifeVerdugo()
    {
        life = managerVerdugo.life_SO;
    }

    void ChangeHealtAmountVerdugo()
    {
        healAmount = managerVerdugo.healAmount_SO;
    }

    void ChangeSoulAmountVerdugo()
    {
        soulAmount = managerVerdugo.soulAmount_SO;
    }


    public void MuertePerro()
    {
        Destroy(gameObject);
    }

    private void OnDestroy()
    {
        managerVerdugo.OnValueChange -= ChangeLifeVerdugo;
        managerVerdugo.OnValueChange -= ChangeHealtAmountVerdugo;
        managerVerdugo.OnValueChange -= ChangeSoulAmountVerdugo;
    }
}