using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossAI : MonoBehaviour
{
    public string currentState;
    public string nextState;

    private UnityEngine.AI.NavMeshAgent bossAgent;
    public UnityEngine.AI.NavMeshAgent agentComponent;

    private float attackDistance = 1f; 

    [SerializeField]
    Transform thingToChase;

    private void Awake()
    {
        agentComponent = GetComponent<UnityEngine.AI.NavMeshAgent>();
    }

    // Start is called before the first frame update
    private void Start()
    {
        bossAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        currentState = "Chase";
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

    IEnumerator Chase()
    {
        while(currentState == "Chase")
        {
            GetComponent<Animator>().SetTrigger("isChasing");
            agentComponent.SetDestination(thingToChase.position);

            if (thingToChase != null)
            {

                yield return null;

                if(bossAgent.remainingDistance <= attackDistance)
                {
                    nextState = "Attack";
                    GetComponent<Animator>().SetTrigger("isAttacking");
                    
                }
            }
            

        }
        SwitchState();
    }
    IEnumerator Attack()
    {

        while(currentState == "Attack")
        {
            GetComponent<Animator>().SetTrigger("isAttacking");
            agentComponent.SetDestination(thingToChase.position);
            yield return null;
            if(bossAgent.remainingDistance >= attackDistance)
            {   
                nextState = "Chase";
                GetComponent<Animator>().SetTrigger("isChasing");
                
            }
        }
        SwitchState();
    }
}
