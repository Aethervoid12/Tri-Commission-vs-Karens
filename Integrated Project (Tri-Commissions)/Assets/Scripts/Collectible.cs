using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Collectible : MonoBehaviour
{
    // Set MeshRenderer to variable myRenderer
    public MeshRenderer myRenderer;

    // Set Color array to variable newColors
    public Color[] newColors;

    // Count number of colours needed to change to
    private int colorIndex = 0;

    // Set color before changing
    public Color startColor;

    // Whether player has interacted with collectible
    bool interact;

    // Assign collectibles to collectUI variable
    public GameObject collectUI;

    void Start()
    {
        // Get material of object
        startColor = GetComponent<Renderer>().material.color;
    }

    void OnTriggerEnter(Collider other)
    {
        // If player enters trigger
        if (other.gameObject.tag == "Player")
        {
            // Change color of object
            myRenderer.material.color = newColors[colorIndex];

            Debug.Log("Player collision");

            // Display collect UI
            collectUI.SetActive(true);
            
        }

    }

    void OnTriggerExit(Collider other)
    {
        //If player exits trigger
        if (other.gameObject.tag == "Player")
        {
            // Change back to initial color
            myRenderer.material.color = startColor;

            Debug.Log("End collision");

            //Hide collect UI
            collectUI.SetActive(false);
        }
    }


    void IdleComplete()
    {
        Debug.Log("Idle Animation Complete");
    }


    public void DestroyCollectible()
    {
        //Destroy collectible after it has been collected
        Destroy(gameObject);
    }


}
