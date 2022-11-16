using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ManagerTrofeos : MonoBehaviour
{
    public int cuchilloComp;
    public int cartaComp;
    public int colmilloComp;
    public int armaduraComp;
    public int tumbaComp;

    public string cuchilloPref;
    public string cartaPref;
    public string colmilloPref;
    public string armaduraPref;
    public string tumbaPref;

    [Header("Botones")]
    public GameObject cuchilloButton;
    public GameObject cartaButton;
    public GameObject colmilloButton;
    public GameObject armaduraButton;
    public GameObject tumbaButton;
    public GameObject mensajeTrofeos;

    public static ManagerTrofeos instance;


    void Awake()
    {
        instance = this;

        LoadData();
        Comprobacion();
    }

    void Comprobacion()
    {
        if (cuchilloComp == 1)
        {
            cuchilloButton.SetActive(true);
        }
        else
        {
            cuchilloButton.SetActive(false);
        }
        //////////////////////
        ///

        if (cartaComp == 1)
        {
            cartaButton.SetActive(true);
        }
        else
        {
            cartaButton.SetActive(false);
        }
        //////////////////////
        ///

        if (colmilloComp == 1)
        {
            colmilloButton.SetActive(true);
        }
        else
        {
            colmilloButton.SetActive(false);
        }
        //////////////////////
        ///

        if (armaduraComp == 1)
        {
            armaduraButton.SetActive(true);
        }
        else
        {
            armaduraButton.SetActive(false);
        }
        //////////////////////
        ///

        if (tumbaComp == 1)
        {
            tumbaButton.SetActive(true);
        }
        else
        {
            tumbaButton.SetActive(false);
        }

        //////////////////////
        ///

        if (cuchilloComp == 1 || cartaComp == 1 || colmilloComp == 1 || armaduraComp == 1 || tumbaComp == 1)
        {
            mensajeTrofeos.SetActive(false);
        }
        else
        {
            mensajeTrofeos.SetActive(true);
        }
    }

    void LoadData()
    {
        cuchilloComp = PlayerPrefs.GetInt(cuchilloPref, 0);
        cartaComp = PlayerPrefs.GetInt(cartaPref, 0);
        colmilloComp = PlayerPrefs.GetInt(colmilloPref, 0);
        armaduraComp = PlayerPrefs.GetInt(armaduraPref, 0);
        tumbaComp = PlayerPrefs.GetInt(tumbaPref, 0);
    }
}
