using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class passiveNPC : MonoBehaviour
{
    NavMeshAgent agent;
    public Transform[] waypoints;
    int waypointIndex;
    Vector3 target;
    bool reachDestination = false;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        UpdateDestination();
        gameObject.GetComponent<Animator>().Play("WALK");
    }

    void Update()
    {
        if (!reachDestination)
        {
            if (Vector3.Distance(transform.position, target) < 1)
            {
                reachDestination = true;
                IterateWaypointIndex();
                UpdateDestination();
                StartCoroutine(Pause());
                reachDestination = false;
            }
        }
    }

    void UpdateDestination()
    {
        target = waypoints[waypointIndex].position;
        agent.SetDestination(target);
    }

    void IterateWaypointIndex()
    {
        waypointIndex++;
        if(waypointIndex == waypoints.Length)
        {
            waypointIndex = 0;
        }
    }

    IEnumerator Pause()
    {
        if (reachDestination)
        {
            agent.isStopped = true;
            gameObject.GetComponent<Animator>().Play("IDLE");
            yield return new WaitForSeconds(10);
            agent.isStopped = false;
            gameObject.GetComponent<Animator>().Play("WALK");
        }
    }
}
