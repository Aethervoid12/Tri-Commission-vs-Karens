using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public GameObject playerPrefab;

    private Player activePlayer;

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

}
