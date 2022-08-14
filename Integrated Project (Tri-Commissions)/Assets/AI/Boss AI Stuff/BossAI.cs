using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossAI : MonoBehaviour
{
    public string currentState;
    public string nextState;

    public float idleTime;

    public float attackDistance = 1f;

    private UnityEngine.AI.NavMeshAgent agent;

    public Transform[] checkpoints;

    private int currentCheckpointIndex; 

    private Transform playerToChase;

    // Start is called before the first frame update
    private void Start()
    {
        agent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        currentState = "Idle";
        nextState = currentState;
        SwitchState();
    }

    // Update is called once per frame
    private void Update()
    {
        if(currentState != nextState)
        {
            currentState = nextState;
        }
    }
    void SwitchState()
    {
        StartCoroutine(currentState);

    }
    public void BossSeePlayer(Transform player)
    {
        playerToChase = player;
        nextState = "Chase";
    }

    IEnumerator Idle()
    {
        GetComponent<Animator>().SetTrigger("isIdle");
        while(currentState == "Idle")
        {
            yield return new WaitForSeconds(idleTime);

            nextState = "Patrol";

        }
        SwitchState();
    }
    IEnumerator Patrol()
    {
        GetComponent<Animator>().SetTrigger("isPatrolling");
        agent.SetDestination(checkpoints[currentCheckpointIndex].position);
        bool hasReached = false;

        while(currentState == "Patrol")
        {
            yield return null;
            if(!hasReached)
            {
                if(agent.remainingDistance <= agent.stoppingDistance)
                {
                    hasReached = true;

                    nextState = "Idle";

                    ++currentCheckpointIndex;

                    if (currentCheckpointIndex >= checkpoints.Length)
                    {
                        currentCheckpointIndex = 0;
                    }
                }
            }
        }
        SwitchState();
    }
    IEnumerator Chase()
    {
        GetComponent<Animator>().SetTrigger("isChasing");
        while(currentState == "Chase")
        {
            yield return null;
            if(playerToChase != null)
            {
                agent.SetDestination(playerToChase.position);
            }
            else if(agent.remainingDistance <= attackDistance)
            {
                nextState = "Attack";
            }
            else
            {
                nextState = "Idle";

            }
        }
        SwitchState();
    }

    IEnumerator Attack()
    {
        GetComponent<Animator>().SetTrigger("isAttacking");
        while(currentState == "Attack")
        {
            yield return null;
            
            if(agent.remainingDistance <= attackDistance)
            {
                nextState = "Chase";
            }
        }
        SwitchState();
    }
}
