using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class passiveNPC : MonoBehaviour
{
    // Sets agent component
    NavMeshAgent agent;

    // Gets checkpoints from inspector
    public Transform[] waypoints;

    // Get index of checkpoint
    int waypointIndex;

    //Gets position of target
    Vector3 target;

    // Whether AI has reached destination
    bool reachDestination = false;

    void Start()
    {
        //Gets agent component
        agent = GetComponent<NavMeshAgent>();

        //Updates destination of AI
        UpdateDestination();

        //Plays walk animation
        gameObject.GetComponent<Animator>().Play("WALK");
    }

    void Update()
    {
        if (!reachDestination)
        {
            // if AI has reached destination, AI heads to another destination
            if (Vector3.Distance(transform.position, target) < 1)
            {
                //Set that AI has reached destination
                reachDestination = true;

                //Change waypoint
                IterateWaypointIndex();

                //update destination
                UpdateDestination();

                //Start timer to pause for a while
                StartCoroutine(Pause());

                //set that AI has not reached destination
                reachDestination = false;
            }
        }
    }

    void UpdateDestination()
    {
        // Set position of waypoints
        target = waypoints[waypointIndex].position;

        // Set destination to get to according to waypoint position
        agent.SetDestination(target);
    }

    void IterateWaypointIndex()
    {
        // Increase waypoint index to change destination
        waypointIndex++;

        //If waypoint index has reached its maximum array, go back to first waypoint
        if(waypointIndex == waypoints.Length)
        {
            waypointIndex = 0;
        }
    }

    IEnumerator Pause()
    {
        //if AI has reached destination
        if (reachDestination)
        {
            //play idle animation
            agent.isStopped = true;
            gameObject.GetComponent<Animator>().Play("IDLE");

            // Pauses for 10 seconds
            yield return new WaitForSeconds(10);

            // play walk animation
            agent.isStopped = false;
            gameObject.GetComponent<Animator>().Play("WALK");
        }
    }
}
