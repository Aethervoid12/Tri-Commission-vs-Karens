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
    /// The Vector3 used to store the left/right mouse input of the user.
    /// </summary>
    Vector3 jumpInput = Vector3.zero;

    /// <summary>
    /// The movement speed of the player per second.
    /// </summary>
    public float moveSpeed = 5f;

    /// <summary>
    /// The movement speed of the player per second.
    /// </summary>
    public float runSpeed = 5f;

    public float defaultSpeed = 5f;

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

    public Vector3 jump;

    public float jumpForce = 2.0f;

    bool isGrounded;

    public bool isWalking;

    Rigidbody rb;

    public float y;

    [HideInInspector] public StaminaController _staminaController;

    void Start()
    {
        _staminaController = GetComponent<StaminaController>();
        rb = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 2.0f, 0.0f);
        isGrounded = true;
    }

    public void SetRunSpeed(float speed)
    {
        runSpeed = speed;
    }

    public void PlayerJump()
    {
        rb.AddForce(new Vector3(0f, y, 0f), ForceMode.Force);
        isGrounded = false;
        Debug.Log("Player is jumping");
    }

    private void Velocity()
    {
        rb = GetComponent<Rigidbody>();
        rb.velocity = moveSpeed * transform.forward;
    }

    private void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    void OnCollisionStay()
    {
        isGrounded = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.LeftShift) == false)
        {
            moveSpeed = 5;
            _staminaController.weAreSprinting = false;
     
        }
        else
        {
            Debug.Log("You are sprinting");
        }
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
                    hitInfo.transform.GetComponent<Collectible>().Collected();
                }
            }
        }

        interact = false;
        
        var vel = GetComponent<Rigidbody>().velocity.magnitude;

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

    void OnJump()
    {
        if (isGrounded)
            _staminaController.StaminaJump();
    }

    void OnSprint()
    {

        moveSpeed = runSpeed;
        _staminaController.Sprinting();
        // right after we apply the double speed or whatever, we set the bool to true so it can't do it over and over again.
        Debug.Log("Player is sprinting");
    }


}
