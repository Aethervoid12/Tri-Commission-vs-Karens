using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pause : MonoBehaviour
{
    public static bool isGamePaused = false;

    [SerializeField] GameObject pauseMenu;

    void Update()
    {
        // if player presses escape key
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (isGamePaused)
            {
                //if the game is paused, it will resume
                ResumeGame();
            }
            else
            {
                //if the game is not paused, it will pause
                PauseGame();
            }
        }
    }

    public void ResumeGame()
    {
        //hide pause menu
        pauseMenu.SetActive(false);

        //resume game time
        Time.timeScale = 1f;

        // Set game to resume
        isGamePaused = false;
    }

    public void PauseGame()
    {
        // Display pause menu
        pauseMenu.SetActive(true);

        //pause game time
        Time.timeScale = 0f;

        // Set game to paused
        isGamePaused = true;
    }
}
