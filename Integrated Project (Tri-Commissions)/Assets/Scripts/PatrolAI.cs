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

    public Transform playerToChase;

    [Header("AnimationSettings")]
    [SerializeField] private Animator animator;
    //[SerializeField] private CurrentAnim currentAnim;

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

    //private void AnimationChecker()
    //{
    //    if (currentAnim == CurrentAnim.Idle)
    //    {

    //    }
    //    else if (currentAnim == CurrentAnim.Walking)
    //    {

    //    }
    //    else if (currentAnim == CurrentAnim.Running)
    //    {

    //    }
    //}

    //enum CurrentAnim
    //{
    //    Idle,
    //    Walking,
    //    Running
    //}

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
        animator.SetBool("isWalking", false);
        animator.SetBool("isRunning", false);
        animator.SetBool("isAttacking" , false);

        while (currentState == "Idle")
        {
            Debug.Log("Idle");

            yield return new WaitForSeconds(idleTime);
            
            nextState = "Patrol";
        }

        SwitchState();
    }

    IEnumerator Patrol()
    {
        agent.SetDestination(checkpoints[currentCheckpointIndex].position);
        bool hasReached = false;
        animator.SetBool("isWalking", true);
        animator.SetBool("isRunning", false);
        animator.SetBool("isAttacking", false);

        while (currentState == "Patrol")
        {
            yield return null;

            Debug.Log("Walking");
            //Debug.Log(currentAnim);


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
                    animator.SetBool("isWalking" , false);
                    animator.SetBool("isAttacking", false);
                }
            }
        }

        SwitchState();
    }

    IEnumerator Chase()
    {
        animator.SetBool("isWalking", false);
        animator.SetBool("isRunning", true);
        animator.SetBool("isAttacking", false);

        while (currentState == "Chase")
        {
            yield return null;

            //Debug.Log(currentAnim);


            if (playerToChase != null)
            {
                float dist = Vector3.Distance(agent.transform.position, playerToChase.position);
                agent.SetDestination(playerToChase.position);

                if (dist < 10.0f)
                {
                    nextState = "Attack";
                }
            }
            else
            {
                nextState = "Idle";
                animator.SetBool("isWalking", false);
                animator.SetBool("isAttacking", false);
            }
        }
        SwitchState();
    }

    IEnumerator Attack()
    {
        animator.SetBool("isWalking", false);
        animator.SetBool("isRunning", false);
        animator.SetBool("isAttacking", true);

        while (currentState == "Attack")
        {
            yield return null;

            Debug.Log(currentState);

            if (playerToChase != null)
            {
                float dist = Vector3.Distance(agent.transform.position, playerToChase.position);

                if (dist > 10.0f)
                {
                    animator.SetBool("isWalking", false);
                    animator.SetBool("isRunning", false);
                    nextState = "Idle";
                }
            }
        }
        SwitchState();
    }
}
