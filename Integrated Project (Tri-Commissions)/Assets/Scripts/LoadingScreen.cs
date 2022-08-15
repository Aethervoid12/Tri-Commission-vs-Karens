using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadingScreen : MonoBehaviour
{
    public string sceneName;
    void Start()
    {
        //Start the coroutine
        StartCoroutine(FauxLoadingPause());
    }

    IEnumerator FauxLoadingPause()
    {

        //yield on a new YieldInstruction that waits for 1 second.
        yield return new WaitForSeconds(1);
        //load next scene
        SceneManager.LoadScene(sceneName);

    }
}
