using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PatrolAI : MonoBehaviour
{
    public string currentState;
    public string nextState;

    public float idleTime;

    private NavMeshAgent agent;

    public Transform[] checkpoints;

    private int currentCheckpointIndex;

    private Transform playerToChase;

    [Header("AnimationSettings")]
    [SerializeField] private Animator animator;
    [SerializeField] private CurrentAnim currentAnim;

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        currentState = "Idle";
        nextState = currentState;
        SwitchState();
        //StartCoroutine(TestSwitch());
    }

    private void Update()
    {
        if (currentState != nextState)
        {
            currentState = nextState;
        }
    }

    private void AnimationChecker()
    {
        if (currentAnim == CurrentAnim.Idle)
        {
            animator.SetBool("isWalking" , false);
            animator.SetBool("isRunning" , false);
        }
        else if (currentAnim == CurrentAnim.Walking)
        {
            animator.SetBool("isWalking", true);
            animator.SetBool("isRunning", false);
        }
        else if (currentAnim == CurrentAnim.Running)
        {
            animator.SetBool("isWalking", false);
            animator.SetBool("isRunning", true);
        }
    }

    enum CurrentAnim
    {
        Idle,
        Walking,
        Running
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

    //IEnumerator TestSwitch()
    //{
    //    yield return new WaitForSeconds(2);
    //    currentAnim = CurrentAnim.Running;
    //}

    IEnumerator Idle()
    {
        while (currentState == "Idle")
        {
            yield return new WaitForSeconds(idleTime);
            currentAnim = CurrentAnim.Idle;

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
            yield return null;
            currentAnim = CurrentAnim.Walking;
            if (!hasReached)
            {
                if(agent.remainingDistance <= agent.stoppingDistance)
                {
                    hasReached = true;

                    nextState = "Idle";

                    ++ currentCheckpointIndex;

                    if(currentCheckpointIndex >= checkpoints.Length)
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
            yield return null;
            currentAnim = CurrentAnim.Running;
            if (playerToChase != null)
            {
                agent.SetDestination(playerToChase.position);
            }
            else
            {
                nextState = "Idle";
            }
        }
        SwitchState();
    }
}
