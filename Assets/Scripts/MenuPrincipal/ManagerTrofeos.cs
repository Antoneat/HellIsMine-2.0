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
        //PlayerPrefs.DeleteAll();
        LoadData();
        Comprobacion();
    }

    void Comprobacion()
    {
        if (cuchilloComp == 1)
        {
            if (cuchilloButton)
            {
                cuchilloButton.SetActive(true);
            }
            else
			{
                Debug.Log("Manager trofeos");
			}
            
        }
        else
        {
            if (cuchilloButton)
            {
                cuchilloButton.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        //////////////////////
        ///

        if (cartaComp == 1)
        {
            if (cartaButton)
            {
                cartaButton.SetActive(true);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        else
        {
            if (cartaButton)
            {
                cartaButton.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        //////////////////////
        ///

        if (colmilloComp == 1)
        {
            if (colmilloButton)
            {
                colmilloButton.SetActive(true);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        else
        {
            if (colmilloButton)
            {
                colmilloButton.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        //////////////////////
        ///

        if (armaduraComp == 1)
        {
            if (armaduraButton)
            {
                armaduraButton.SetActive(true);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        else
        {
            if (armaduraButton)
            {
                armaduraButton.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        //////////////////////
        ///

        if (tumbaComp == 1)
        {
            if (tumbaButton)
            {
                tumbaButton.SetActive(true);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        else
        {
            if (tumbaButton)
            {
                tumbaButton.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }

        //////////////////////
        ///

        if (cuchilloComp == 1 || cartaComp == 1 || colmilloComp == 1 || armaduraComp == 1 || tumbaComp == 1)
        {
            if (mensajeTrofeos)
            {
                mensajeTrofeos.SetActive(false);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
        }
        else
        {
            if (mensajeTrofeos)
            {
                mensajeTrofeos.SetActive(true);
            }
            else
            {
                Debug.Log("Manager trofeos");
            }
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
