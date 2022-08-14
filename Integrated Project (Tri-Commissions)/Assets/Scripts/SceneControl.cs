using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneControl : MonoBehaviour
{
    //the index of the scene that should be loaded
    public int targetSceneIndex;
    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    public void Interact()
    {
        Debug.Log("Switch Scene");
        SceneManager.LoadScene(targetSceneIndex);
    }
}
