using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Player : MonoBehaviour
{
    /// <summary>
    /// The Vector3 used to store the WASD input of the user.
    /// </summary>
    Vector3 movementInput = Vector3.zero;

    /// <summary>
    /// The Vector3 used to store the left/right mouse input of the user.
    /// </summary>
    Vector3 rotationInput = Vector3.zero;

    /// <summary>
    /// The movement speed of the player per second.
    /// </summary>
    float moveSpeed = 5f;

    /// <summary>
    /// The speed at which the player rotates
    /// </summary>
    float rotationSpeed = 60f;


    /// <summary>
    /// Tracks whether the player is dead or not.
    /// </summary>
    bool isDead = false;

    float interactionDistance = 3f;

    bool interact = false;

    Vector3 headRotationInput;

    public GameObject playerCamera;

    public GameObject pauseScreen;

    public GameObject cheese;

    private void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    // Update is called once per frame
    void Update()
    {
        if (!isDead)
        {
            // Create a new Vector3
            Vector3 movementVector = Vector3.zero;

            // Add the forward direction of the player multiplied by the user's up/down input.
            movementVector += transform.forward * movementInput.y;

            // Add the right direction of the player multiplied by the user's right/left input.
            movementVector += transform.right * movementInput.x;

            // Apply the movement vector multiplied by movement speed to the player's position.
            transform.position += movementVector * moveSpeed * Time.deltaTime;

            // Apply the rotation multiplied by the rotation speed.
            //transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles + rotationInput * rotationSpeed * Time.deltaTime);
            //playerCamera.transform.rotation = Quaternion.Euler(playerCamera.transform.rotation.eulerAngles + headRotationInput * rotationSpeed * Time.deltaTime);

            Debug.DrawLine(playerCamera.transform.position, playerCamera.transform.position + (playerCamera.transform.forward * interactionDistance));

            RaycastHit hitInfo;
            if (Physics.Raycast(playerCamera.transform.position, playerCamera.transform.forward, out hitInfo, interactionDistance))
            {
                Debug.Log(hitInfo.transform.name);
                if (hitInfo.transform.tag == "Cheese")
                {
                    if (interact)
                    {
                        cheese.SetActive(false);
                    }
                }
            }
        }

        interact = false;
    }

    /// <summary>
    /// Called when the object collides with another object.
    /// </summary>
    /// <param name="collision">Holds the information of the collision.</param>


    /// <summary>
    /// Called when the Look action is detected.
    /// </summary>
    /// <param name="value"></param>
    void OnLook(InputValue value)
    {
        if (!isDead)
        {
            rotationInput.y = value.Get<Vector2>().x;
            headRotationInput.x = value.Get<Vector2>().y * -1;
        }
    }

    /// <summary>
    /// Called when the Move action is detected.
    /// </summary>
    /// <param name="value"></param>
    void OnMove(InputValue value)
    {
        if (!isDead)
        {
            movementInput = value.Get<Vector2>();
        }
    }

    void OnFire()
    {
        interact = true;
    }
    

}
