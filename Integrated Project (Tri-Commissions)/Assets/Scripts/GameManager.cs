using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    // Prefab of object to spawn
    public GameObject playerPrefab;

    // Keep track of which instance is the “active” GameManager.
    public static GameManager instance;

    // Link player script
    private Player activePlayer;

    // Store number of items collected
    public int itemsCollected;

    // Assign object "Cheese" in inventory
    public GameObject cheeseUI;

    // Assign object "Apple" in inventory
    public GameObject appleUI;

    // Assign object "Egg" in inventory
    public GameObject eggUI;

    //  Assign Inventory UI
    public GameObject listUI;

    // Assign Prompt UI
    public GameObject promptUI;

    // Assign Investigate UI
    public GameObject investigateUI;

    // Assign Run UI
    public GameObject runUI;

    // Whether cheese is collected or not
    public bool cheeseCollected = false;

    // Whether egg is collected or not
    public bool eggCollected = false;

    // Whether apple is collected or not
    public bool appleCollected = false;

    // Whether milk is collected or not
    public bool milkCollected = false;

    //
    private bool secondFloor = false;

    void Start()
    {
        // Number of items collected starts at 0
        itemsCollected = 0;
    }

    void Update()
    {
        //if second floor isn't unlocked
        if (!secondFloor)
        {
            //check if the necessary items are collected to access second floor
            if (cheeseCollected && appleCollected && eggCollected)
            {
                // Show list UI
                listUI.SetActive(false);

                // Show prompt UI
                promptUI.SetActive(true);

                //set second floor as unlocked
                secondFloor = true;
            }
        }
    }

    private void Awake()
    {
        //The GameObject that this GameManager class is attached to will now not be destroyed when scenes are changed.
        DontDestroyOnLoad(gameObject);
    }

    private void SpawnPlayerOnSceneLoad()
    {
        // if there is no player, spawn a new player at the position
        if(activePlayer == null)
        {
            GameObject newPlayer = Instantiate(playerPrefab, Vector3.zero, Quaternion.identity);
            activePlayer = newPlayer.GetComponent<Player>();
        }

        //Terminate execution
        else
        {
            return;
        }
    }

    public void CheeseCollected()
    {
        // Set that cheese is collected
        cheeseCollected = true;

        // Hide cheese UI
        cheeseUI.SetActive(false);
    }

    public void MilkCollected()
    {
        // Set that milk is collected
        milkCollected = true;
        // Show Investigate UI
        investigateUI.SetActive(false);
        // Show Run UI
        runUI.SetActive(true);
    }

    public void AppleCollected()
    {
        // Set that apple is collected
        appleCollected = true;

        // Hide apple UI
        appleUI.SetActive(false);
    }

    public void EggCollected()
    {
        // Set that egg is collected
        eggCollected = true;

        // Hide egg UI
        eggUI.SetActive(false);
    }


}
