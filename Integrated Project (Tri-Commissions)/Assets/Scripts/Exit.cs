using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Exit : MonoBehaviour
{
    public void exitgame()
    {
        // Quits the game
        Debug.Log("exitgame");
        Application.Quit();
    }
}