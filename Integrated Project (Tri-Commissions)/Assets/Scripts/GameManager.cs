using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public GameObject playerPrefab;

    public static GameManager instance;

    private Player activePlayer;

    public int itemsCollected;

    public GameObject cheeseUI;

    public GameObject appleUI;

    public GameObject eggUI;

    public GameObject listUI;

    public GameObject promptUI;

    public GameObject investigateUI;

    public GameObject runUI;

    public bool cheeseCollected = false;

    public bool eggCollected = false;

    public bool appleCollected = false;

    public bool milkCollected = false;

    void Start()
    {
        itemsCollected = 0;
    }

    void Update()
    {
        if (cheeseCollected == true)
        {
            if (eggCollected == true)
            {
                if (appleCollected == true)
                {
                    listUI.SetActive(false);
                    promptUI.SetActive(true);
                }
            }
        }
    }

    private void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    private void SpawnPlayerOnSceneLoad()
    {
        if(activePlayer == null)
        {
            GameObject newPlayer = Instantiate(playerPrefab, Vector3.zero, Quaternion.identity);
            activePlayer = newPlayer.GetComponent<Player>();
        }

        else
        {
            return;
        }
    }

    public void CheeseCollected()
    {
        cheeseCollected = true;
        cheeseUI.SetActive(false);
    }

    public void MilkCollected()
    {
        milkCollected = true;
        investigateUI.SetActive(false);
        runUI.SetActive(true);
    }

    public void AppleCollected()
    {
        appleCollected = true;
        appleUI.SetActive(false);
    }

    public void EggCollected()
    {
        eggCollected = true;
        eggUI.SetActive(false);
    }


}
