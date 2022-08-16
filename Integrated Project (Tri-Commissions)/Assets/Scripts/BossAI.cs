using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BossAI : MonoBehaviour
{
    // Current state of boss
    public string currentState;

    // Next state for agent to switch to
    public string nextState;

    // Duration of idle state
    public float idleTime;

    // Sets agent component
    private UnityEngine.AI.NavMeshAgent agent;

    // Gets checkpoints from inspector
    public Transform[] checkpoints;

    // Get index of checkpoint
    private int currentCheckpointIndex; 

    // Distance for boss to attack
    private float attackDistance = 2f;

    // Get position, rotation and scale of the player
    private Transform playerToChase;

    // Start is called before the first frame update
    private void Start()
    {
        // Gets the agent component
        agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

        // Sets default state to idle
        currentState = "Idle";

        // Sets next state to default state
        nextState = currentState;

        //Switch to next state
        SwitchState();
    }

    // Update is called once per frame
    private void Update()
    {
        // Updates the AI state
        if (currentState != nextState)
        {
            currentState = nextState;
        }
    }

    void SwitchState()
    {
        // Starts default state
        StartCoroutine(currentState);
    }

    public void SeePlayer(Transform player)
    {
        // Sets the player as target
        playerToChase = player;
        
        if(agent.remainingDistance <= agent.stoppingDistance)
        {
            // If agent is near to player, switches to attack state
            nextState = "Attack";
        }
        else
        {
            // If not, switches to chase state
            nextState = "Chase";
        }
    }

    IEnumerator Idle()
    {
        
        while(currentState == "Idle")
        {
            //Sets the idle animation
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",true);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",false);

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

        while (currentState == "Patrol")
        {
            //Plays patrol animation
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",true);
            GetComponent<Animator>().SetBool("isAttacking",false);

            yield return null;

            if(!hasReached)
            {
                if(agent.remainingDistance <= agent.stoppingDistance)
                {
                    //if player has reached checkpoint, set next state to idle
                    hasReached = true;

                    nextState = "Idle";

                    //set next checkpoint as destination
                    ++currentCheckpointIndex;

                    if (currentCheckpointIndex >= checkpoints.Length)
                    {
                        currentCheckpointIndex = 0;
                    }
                }
            }
        }

        //Switch to next state
        SwitchState();
    }
    IEnumerator Chase()
    {
       
        while(currentState == "Chase")
        {
            //Plays chase animation
            GetComponent<Animator>().SetBool("isChasing",true);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",false);

            yield return null;

            if(playerToChase != null)
            {
                //if agent detects player, set destination as player
                agent.SetDestination(playerToChase.position);
            }
            else if(agent.remainingDistance <= attackDistance)
            {
                //if agent is near to player, switch state to attack
                nextState = "Attack";
            }
            else
            {
                //if agent is far from player, switch state to idle
                nextState = "Idle";
            }
        }
        //Switch to next state
        SwitchState();
    }
    IEnumerator Attack()
    {
       
        while(currentState == "Attack")
        {
            //Plays attack animation
            GetComponent<Animator>().SetBool("isChasing",false);
            GetComponent<Animator>().SetBool("isIdle",false);
            GetComponent<Animator>().SetBool("isPatrolling",false);
            GetComponent<Animator>().SetBool("isAttacking",true);

            yield return null;
            
            if(agent.remainingDistance >= attackDistance)
            {
                //if agent is far from player, switch state to idle
                nextState = "Idle";
            }

        }
        //Switch to next state
        SwitchState();
    }

}
