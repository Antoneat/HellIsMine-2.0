using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SamaAtkEspecial : MonoBehaviour
{

    public List<GameObject> jaulas;//Lista de las 5 jaulas a spawnear
    public GameObject jaulaDeAlmas; // Prefabs de la jaula

    // Start is called before the first frame update

    [Header("Ataque Especial")]
    [SerializeField] SamaMov samaMov;
    [SerializeField] Animator anim;


    void Start()
    {
        anim = GetComponent<Animator>();
    }

    public void StartOfEspecialAttack() //Evento cuando empieza la anim de basicAttack
    {
        samaMov.StopChase();
        samaMov.attacking = true;
        samaMov.stare = false;

        InvokeRepeating(nameof(SpawnJaula), 1f, 1f);

        anim.ResetTrigger("Samael_Ataque_1");
        anim.ResetTrigger("Samael_Ataque_Especial");
        anim.ResetTrigger("Samael_Prepara_Embestida");
    }

    public void EndOfEspecialAttack() //Evento cuando termina la anim de basicAttack
    {
        samaMov.Chase();
        samaMov.attacking = false;
        samaMov.stare = true;

    }

    //Esta habilidad se puede utilizar cada que hayan menos de 3 jaulas de almas en el nivel.
    void SpawnJaula()
    {
        Vector3 randomSpawnPositionA = new Vector3(UnityEngine.Random.Range(295, 316), -1, UnityEngine.Random.Range(356, 378)); //CAMBIAR POR LAS DIMENSIONES DE LA SALA DE Samael
        if (jaulas.Count <= 3)
        {
            Instantiate(jaulaDeAlmas, randomSpawnPositionA, Quaternion.identity);
            jaulas.Add(jaulaDeAlmas);
        }

    }
}
