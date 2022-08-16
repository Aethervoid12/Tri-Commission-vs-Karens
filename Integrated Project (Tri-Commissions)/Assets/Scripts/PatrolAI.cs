using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PatrolAI : MonoBehaviour
{
    // Current state of agent
    public string currentState;

    // Next state for agent to switch to
    public string nextState;

    // Duration of idle state
    public float idleTime;

    // Sets agent component
    private NavMeshAgent agent;

    // Gets checkpoints from inspector
    public Transform[] checkpoints;

    // Get index of checkpoint
    private int currentCheckpointIndex;

    // Get position, rotation and scale of the player
    public Transform playerToChase;

    //Get agent animator
    [Header("AnimationSettings")]
    [SerializeField] private Animator animator;

    private void Start()
    {
        //Gets the agent component
        agent = GetComponent<NavMeshAgent>();

        //Sets default state to idle
        currentState = "Idle";

        //Sets next state to default state
        nextState = currentState;

        //Switch to next state
        SwitchState();
    }

    private void Update()
    {
        //updates the AI state
        if (currentState != nextState)
        {
            currentState = nextState;
        }
    }


    void SwitchState()
    {
        //Starts default state
        StartCoroutine(currentState);
    }

    public void SeePlayer(Transform player)
    {
        //Sets the player as target
        playerToChase = player;

        //Chases the target
        nextState = "Chase";
    }

    IEnumerator Idle()
    {
        //Sets the idle animation
        animator.SetBool("isWalking", false);
        animator.SetBool("isRunning", false);
        animator.SetBool("isAttacking" , false);

        while (currentState == "Idle")
        {
            Debug.Log("Idle");

            //Waits for idle time to finish
            yield return new WaitForSeconds(idleTime);
            
            //Calls next state
            nextState = "Patrol";
        }

        //Switch to next state
        SwitchState();
    }

    IEnumerator Patrol()
    {
        //Sets checkpoint as destination
        agent.SetDestination(checkpoints[currentCheckpointIndex].position);

        //Sets default to has not reached destination
        bool hasReached = false;

        //Plays patrol animation
        animator.SetBool("isWalking", true);
        animator.SetBool("isRunning", false);
        animator.SetBool("isAttacking", false);

        while (currentState == "Patrol")
        {
            yield return null;

            Debug.Log("Walking");

            if (!hasReached)
            {
                if(agent.remainingDistance <= agent.stoppingDistance)
                {
                    //if player has reached checkpoint, set next state to idle
                    hasReached = true;

                    nextState = "Idle";

                    //set next checkpoint as destination
                    ++ currentCheckpointIndex;

                    if(currentCheckpointIndex >= checkpoints.Length)
                    {
                        currentCheckpointIndex = 0;
                    }

                    //play idle animation
                    animator.SetBool("isWalking" , false);
                    animator.SetBool("isAttacking", false);
                }
            }
        }
        //Switch to next state
        SwitchState();
    }

    IEnumerator Chase()
    {
        //Plays chase animation
        animator.SetBool("isWalking", false);
        animator.SetBool("isRunning", true);
        animator.SetBool("isAttacking", false);

        while (currentState == "Chase")
        {
            yield return null;

            if (playerToChase != null)
            {
                float dist = Vector3.Distance(agent.transform.position, playerToChase.position);

                //if agent detects player, set destination as player
                agent.SetDestination(playerToChase.position);

                //if distance between player and agent < 10f, switch state to attack
                if (dist < 10.0f)
                {
                    nextState = "Attack";
                }
            }

            else
            {
                //if player is out of vision, set state to idle 
                nextState = "Idle";

                //play idle animation
                animator.SetBool("isWalking", false);
                animator.SetBool("isAttacking", false);
            }
        }
        //switch to next state
        SwitchState();
    }

    IEnumerator Attack()
    {
        //Play attack animation
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

                //if there is a player and distance > 10f, set next state to idle and play idle animation
                if (dist > 10.0f)
                {
                    animator.SetBool("isWalking", false);
                    animator.SetBool("isRunning", false);
                    nextState = "Idle";
                }
            }
        }

        //switch to next state
        SwitchState();
    }
}
