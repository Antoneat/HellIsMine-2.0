using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class AgitadorLife : MonoBehaviour
{
    public VariableManagerBombita managerBombita;

    public float life;
    public float maxLife;
    [SerializeField] private GameObject SoulVFX;

    public float healAmount;

    [SerializeField] UnityEvent DmgSound;
    //public ParticleSystem almas;


    private void Start()
    {
        life = 1;
        maxLife = life;

        ChangeLifeAgitador();
        ChangeHealtAmountAgitador();

        managerBombita.OnValueChange += ChangeLifeAgitador;
        managerBombita.OnValueChange += ChangeHealtAmountAgitador;
    }

    #region Agitador
    void ChangeLifeAgitador()
    {
        life = managerBombita.life_SO;
    }

    void ChangeHealtAmountAgitador()
    {
        healAmount = managerBombita.healAmount_SO;
    }

    #endregion

    public void TakeDmg(float dmg)
    {
        life -= dmg;
        DmgSound.Invoke();
        if (life <= 0)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            GameObject obj = Instantiate(SoulVFX);
            obj.transform.position = transform.position;
            obj.GetComponent<AlmasParent>().almaScript.curacion = healAmount;

            Muerte();
            Debug.Log("deberia morir la bomba");
        }
    }

    public void Muerte()
    {
        Destroy(gameObject);
    }

    private void OnDestroy()
    {
        managerBombita.OnValueChange -= ChangeLifeAgitador;
        managerBombita.OnValueChange -= ChangeHealtAmountAgitador;
    }
}
