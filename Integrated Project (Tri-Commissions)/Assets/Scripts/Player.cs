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
    float rotationSpeed = 180f;

    /// <summary>
    /// Tracks whether the player is dead or not.
    /// </summary>
    bool isDead = false;

    float interactionDistance = 3f;

    bool interact = false;

    bool press = false;

    Vector3 headRotationInput;

    public GameObject playerCamera;

    public GameObject pauseScreen;

    public GameObject itemCollect;

    public Vector3 jump;

    public float jumpForce = 2.0f;

    bool isGrounded;

    public bool isWalking;

    Rigidbody rb;

    public float y;

    public GameObject playerTransform;

    [HideInInspector] public StaminaController _staminaController;

    private Collectible collect;

    public GameObject cheese;

    public GameObject soda;

    public GameObject apple;

    public GameObject egg;

    [SerializeField]
    Karen genericKaren;

    void Start()
    {
        _staminaController = GetComponent<StaminaController>();
        rb = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 2.0f, 0.0f);
        isGrounded = true;
        collect = GetComponent<Collectible>();
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
            GatherInput();
            Look();
            RayCasting();
        }
        
        if (Input.GetKeyDown(KeyCode.Y))
        {
            genericKaren.SetThingToChase(transform);
        }

        var vel = GetComponent<Rigidbody>().velocity.magnitude;

    }

    public void RayCasting()
    {
        if (!isDead)
        {
            RaycastHit hitInfo;
            if (Physics.Raycast(transform.position, transform.forward, out hitInfo, interactionDistance))
            {
                Debug.Log(hitInfo.transform.name);

                if (hitInfo.transform.tag == "Elevator")
                {
                    if(press)
                    {
                        hitInfo.transform.GetComponent<SceneControl>().Interact();
                    }

                }
            }
            press = false;
        }
    }


    //execute move function
    private void FixedUpdate()
    {
        if (!isDead)
        {
            Move();
        }
    }

    //gather vector to rotate the player
    private void GatherInput()
    {
        headRotationInput = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical"));
    }
    //Apply the rotation multiplied by the rotation speed.
    private void Look()
    {
        if (headRotationInput == Vector3.zero) return;

        var rot = Quaternion.LookRotation(headRotationInput.ToIso(), Vector3.up);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, rot, rotationSpeed * Time.deltaTime);
    }
    // Apply the movement vector multiplied by movement speed to the player's position.
    private void Move()
    {
        rb.MovePosition(transform.position + transform.forward * headRotationInput.normalized.magnitude * moveSpeed * Time.deltaTime);
    }


    /// <summary>
    /// Called when the object collides with another object.
    /// </summary>
    /// <param name="collision">Holds the information of the collision.</param>


    void OnFire()
    {
        press = true;
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


    public void OnInteract()
    {
        
        interact = true;

        if (cheese.gameObject.tag == "CheeseCollectible")
        {
            if (interact)
            {
                cheese.SetActive(false);
            }
                
        }
        if (soda.gameObject.tag == "SodaCollectible")
        {
            if (interact)
            {
                soda.SetActive(false);
            }

        }
        if (apple.gameObject.tag == "AppleCollectible")
        {
            if (interact)
            {
                apple.SetActive(false);
            }
        }
        if (egg.gameObject.tag == "EggCollectible")
        {
            if (interact)
            {
                egg.SetActive(false);
            }
        }

    }

}
public static class Helpers
{
    private static Matrix4x4 _isoMatrix = Matrix4x4.Rotate(Quaternion.Euler(0, 90, 0));
    public static Vector3 ToIso(this Vector3 input) => _isoMatrix.MultiplyPoint3x4(input);
}