using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Collectible : MonoBehaviour
{
    public MeshRenderer myRenderer;
    public Color[] newColors;
    private int colorIndex = 0;
    public Color startColor;

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player")
        {
            myRenderer.material.color = newColors[colorIndex];
            Collected();
            Debug.Log("Player collision");
        }

    }

    void OnTriggerExit(Collider other)
    {
        myRenderer.material.color = startColor;
    }

    void IdleComplete()
    {
        Debug.Log("Idle Animation Complete");
    }

    public void Collected()
    {
        Debug.Log("Collected");
    }

    void DestroyCollectible()
    {
        Destroy(gameObject);
    }

}
