using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossVisionField : MonoBehaviour
{
    public BossAI attachedAI;

    private void OnTriggerExit(Collider other)
    {
        if(other.tag == "Player")
        {
            attachedAI.SeePlayer(null);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            attachedAI.SeePlayer(other.transform);
            Debug.Log("Player detected");
        }
    }

        private void OnTriggerStay(Collider other)
    {
        if(other.tag == "Player")
        {
            attachedAI.SeePlayer(other.transform);
            Debug.Log("Player detected");
        }
    }
}
