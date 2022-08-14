using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossVisionField : MonoBehaviour
{
    public BossAI bossAttachedAI;

    private void OnTriggerExit(Collider other)
    {
        if(other.tag == "Player")
        {
            bossAttachedAI.BossSeePlayer(null);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            bossAttachedAI.BossSeePlayer(other.transform);
        }
    }
}
