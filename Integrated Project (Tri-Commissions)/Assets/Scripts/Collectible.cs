using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collectible : MonoBehaviour
{
    public void Collected()
    {
        GetComponent<Collider>().enabled = false;
        Debug.Log("Collected");
    }

    public virtual void DestroyCollectible()
    {
        Destroy(gameObject);
    }
}
