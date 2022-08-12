using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collectible : MonoBehaviour
{
    public string currentState;

    public string nextState;

    public bool normal;

    public MeshRenderer myRenderer;

    public Color startColor;
    void Start()
    {
        currentState = "Normal";
        nextState = currentState;
        SwitchState();
        startColor = myRenderer.material.color;
    }

    void Update()
    {
        if (normal)
        {
            nextState = "Normal";
        }
        else
        {
            nextState = "Critical";
        }
        if (nextState != currentState)
        {
            currentState= nextState;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            myRenderer.material.color = Color.Lerp(startColor, newColors[colorIndex], changePercent);
        }
        Debug.Log("Cheese");
    }

    private void OnTriggerExit(Collider other)
    {
        CollectibleExit();
    }
}
