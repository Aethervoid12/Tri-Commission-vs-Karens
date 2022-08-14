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

    public GameObject sodaUI;

    public GameObject eggUI;

    public GameObject listUI;

    public GameObject promptUI;

    public GameObject investigateUI;

    public GameObject runUI;

    void Start()
    {
        itemsCollected = 0;
    }

    void Update()
    {
        if (itemsCollected == 4)
        {
            listUI.SetActive(false);
            promptUI.SetActive(true);
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
        itemsCollected++;
        cheeseUI.SetActive(false);
    }

    public void SodaCollected()
    {
        itemsCollected++;
        sodaUI.SetActive(false);
    }

    public void AppleCollected()
    {
        itemsCollected++;
        sodaUI.SetActive(false);
    }

    public void EggCollected()
    {
        itemsCollected++;
        sodaUI.SetActive(false);
    }


}
