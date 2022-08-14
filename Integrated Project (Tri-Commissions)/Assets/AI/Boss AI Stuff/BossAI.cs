using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossAI : MonoBehaviour
{
    public string currentState;
    public string nextState;

    private UnityEngine.AI.NavMeshAgent bossAgent;
    public UnityEngine.AI.NavMeshAgent agentComponent;

    // When the AI detects that it is within 1f away from the player it will change to atttack scene.
    private float attackDistance = 1f; 
    
    //player is the thing for the AI to chase 
    [SerializeField]
    Transform thingToChase;

    private void Awake()
    {
        //Identifying if the AI has navmeshagent to walk around the navmesh
        agentComponent = GetComponent<UnityEngine.AI.NavMeshAgent>();
    }

    // Start is called before the first frame update
    private void Start()
    {   
        //Identifying if the AI has navmeshagent to walk around the navmesh
        bossAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        currentState = "Chase";
        //At the starting the currrent and next state is the same
        nextState = currentState;
        SwitchState();
    }

    // Update is called once per frame
    private void Update()
    {
        //If current state and next state is different, the state will change to next stage. Else it will remain unchange
        if(currentState != nextState)
        {
            currentState = nextState;
        }
    }

    //Will play current state, either chase or attack
    void SwitchState()
    {
        StartCoroutine(currentState);

    }
    // When the current state is chase
    IEnumerator Chase()
    {
        while(currentState == "Chase")
        {
            // Will play the animation for chasing player
            GetComponent<Animator>().SetTrigger("isChasing");

            // Will go to player position
            agentComponent.SetDestination(thingToChase.position);

            // When the player is present in the area
            if (thingToChase != null)
            {

                yield return null;
                
                // If the AI is within 1f distance from the player, it will start attacking the player
                if(bossAgent.remainingDistance <= attackDistance)
                {
                    nextState = "Attack";
                    // Play animation to attack player
                    GetComponent<Animator>().SetTrigger("isAttacking");
                    
                }
            }
            

        }
        SwitchState();
    }
    //When the current state is attack
    IEnumerator Attack()
    {
        
        while(currentState == "Attack")
        {
            // When the AI is attacking, animation for attack will start
            GetComponent<Animator>().SetTrigger("isAttacking");

            // Will still follow the player even when attacking.
            agentComponent.SetDestination(thingToChase.position);
            
            yield return null;

            // If the remaining distance is larger than the attack distance, the state and animation will change to chase
            if(bossAgent.remainingDistance >= attackDistance)
            {   
                nextState = "Chase";
                GetComponent<Animator>().SetTrigger("isChasing");

            }
        }
        SwitchState();
    }
}
