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

        //yield on a new YieldInstruction that waits for 3 seconds.
        yield return new WaitForSeconds(2);
        //load next scene
        SceneManager.LoadScene(sceneName);

    }
}
