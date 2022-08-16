using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneControl : MonoBehaviour
{
    // The index of the scene that should be loaded
    public int targetSceneIndex;
    
    // Load scene from in public string
    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    // If player clicks on object, switch scene
    public void Interact()
    {
        Debug.Log("Switch Scene");
        SceneManager.LoadScene(targetSceneIndex);
    }
}
