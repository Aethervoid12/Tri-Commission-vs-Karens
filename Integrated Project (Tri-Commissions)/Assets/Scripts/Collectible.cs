using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Collectible : MonoBehaviour
{
    public MeshRenderer myRenderer;
    public Color[] newColors;
    private int colorIndex = 0;
    public Color startColor;
    bool interact;
    public GameObject collectUI;

    void Start()
    {
        startColor = GetComponent<Renderer>().material.color;
    }

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player")
        {
            myRenderer.material.color = newColors[colorIndex];
            Debug.Log("Player collision");
            collectUI.SetActive(true);
            
        }

    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            myRenderer.material.color = startColor;
            Debug.Log("End collision");
            collectUI.SetActive(false);
        }
    }

    //void OnTriggerExit(Collider other)
    //{
    //    myRenderer.material.color = startColor;
    //}

    void IdleComplete()
    {
        Debug.Log("Idle Animation Complete");
    }


    public void DestroyCollectible()
    {
        Destroy(gameObject);
    }


}
