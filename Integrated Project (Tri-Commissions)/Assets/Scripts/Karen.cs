using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Karen : MonoBehaviour
{
    //Set agent component
    NavMeshAgent agentComponent;

    // Get position, rotation and scale of the player
    [SerializeField]
    Transform thingToChase;

    private void Awake()
    {
        //Gets the agent component
        agentComponent = GetComponent<NavMeshAgent>();
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        ////if agent detects player, set destination as player
        if (thingToChase != null)
        {
            agentComponent.SetDestination(thingToChase.position);
        }
    }

    public void SetThingToChase(Transform thingToSet)
    {
        //set player as position to get to 
        thingToChase = thingToSet;
    }
}