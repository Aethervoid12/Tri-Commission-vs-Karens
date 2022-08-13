using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Collectible : MonoBehaviour
{
    private Outline outline;
    public MeshRenderer myRenderer;
    public Color[] newColors;
    private int colorIndex = 0;
    public Color startColor;

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player")
        {
            myRenderer.material.color = newColors[colorIndex];

        }

    }

    void OnTriggerExit(Collider other)
    {
        myRenderer.material.color = startColor;
    }

}
