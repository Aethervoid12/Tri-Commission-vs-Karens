using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BossAI : MonoBehaviour
{
    public string currentState;
    public string nextState;

    public float idleTime;

    private UnityEngine.AI.NavMeshAgent agent;

    public Transform[] checkpoints;

    private int currentCheckpointIndex; 

    private float attackDistance = 1f;

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

    public void SeePlayer(Transform player)
    {
        playerToChase = player;
        nextState = "Chase";
    }

    IEnumerator Idle()
    {
        
        while(currentState == "Idle")
        {
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",true);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",false);
            yield return new WaitForSeconds(idleTime);

            nextState = "Patrol";

        }
        SwitchState();
    }
    IEnumerator Patrol()
    {
        
        agent.SetDestination(checkpoints[currentCheckpointIndex].position);
        bool hasReached = false;

        while(currentState == "Patrol")
        {
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",true);
            GetComponent<Animator>().SetBool("isAttacking",false);
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
       
        while(currentState == "Chase")
        {
            GetComponent<Animator>().SetBool("isChasing",true);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",false);
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
       
        while(currentState == "Attack")
        {
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",true);
            yield return null;
            
            if(agent.remainingDistance >= attackDistance);
            {
                nextState = "Idle";
            }

        }
        SwitchState();
    }

}
