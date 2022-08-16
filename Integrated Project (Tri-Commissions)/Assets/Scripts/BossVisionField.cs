using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossVisionField : MonoBehaviour
{
    public BossAI attachedAI;

    private void OnTriggerExit(Collider other)
    {
        // If player exits vision, AI does not see player
        if (other.tag == "Player")
        {
            attachedAI.SeePlayer(null);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // If player enters vision, AI sees player
        if (other.tag == "Player")
        {
            attachedAI.SeePlayer(other.transform);
            Debug.Log("Player detected");
        }
    }

    private void OnTriggerStay(Collider other)
    {
        // If player stays in vision, AI sees player
        if (other.tag == "Player")
        {
            attachedAI.SeePlayer(other.transform);
            Debug.Log("Player detected");
        }
    }
}
