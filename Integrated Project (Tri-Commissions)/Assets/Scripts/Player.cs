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
    /// The Vector3 used to store the space input of the player
    /// </summary>
    Vector3 jumpInput = Vector3.zero;

    /// <summary>
    /// The current speed of the player per second.
    /// </summary>
    public float moveSpeed = 5f;

    /// <summary>
    /// The running speed of the player per second.
    /// </summary>
    public float runSpeed = 5f;

    /// <summary>
    /// The walking speed of player per second
    /// </summary>
    public float defaultSpeed = 5f;

    /// <summary>
    /// The speed at which the player rotates
    /// </summary>
    float rotationSpeed = 180f;

    /// <summary>
    /// Tracks whether the player is dead or not.
    /// </summary>
    bool isDead = false;

    /// <summary>
    /// Int
    /// </summary>
    float interactionDistance = 4f;

    bool interact = false;

    bool press = false;

    Vector3 headRotationInput;

    public GameObject playerCamera;

    public GameObject deathScreen;

    public GameObject itemCollect;

    public Vector3 jump;

    public float jumpForce = 2.0f;

    bool isGrounded;

    public bool isWalking;

    Rigidbody rb;

    public GameObject collectUI;

    public float y;

    public GameObject playerTransform;

    [HideInInspector] public StaminaController _staminaController;

    private Collectible collect;

    public GameObject cheese;

    public GameObject milk;

    public GameObject apple;

    public GameObject egg;

    public GameManager GM;

    public GameObject dialogueUI;

    private bool appleCollection = false;

    private bool eggCollection = false;

    private bool milkCollection = false;

    private bool cheeseCollection = false;

    // The maximum health
    public int maxHealth = 100;

    //Current health
    public int currentHealth;

    //Linking Script Healthbar into player script
    public HealthBar healthBar;


    void Start()
    {
        _staminaController = GetComponent<StaminaController>();
        rb = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 2.0f, 0.0f);
        isGrounded = true;
        collect = GetComponent<Collectible>();
        if (GM == null)
        {
            GM = FindObjectOfType<GameManager>();
        }
        currentHealth = maxHealth;
        healthBar.SetMaxHealth(maxHealth);
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

    void OnCollisionStay()
    {
        isGrounded = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (!isDead)
        {
            if (!Input.anyKey)
            {
                gameObject.GetComponent<Animator>().Play("IDLE");
            }
            else if (Input.GetKey(KeyCode.W) == true||Input.GetKey(KeyCode.A) == true||Input.GetKey(KeyCode.S) == true||Input.GetKey(KeyCode.D) == true)
            {
                if (Input.GetKey(KeyCode.LeftShift) == false)
                {
                    gameObject.GetComponent<Animator>().Play("WALK");
                    _staminaController.weAreSprinting = false;
                }
                else if (Input.GetKey(KeyCode.LeftShift) == true)
                {
                    gameObject.GetComponent<Animator>().Play("RUN");
                }
            }

            GatherInput();
            Look();
            RayCasting();
        }

        if(isDead)
        {
            DeathPrompt();
        }
        
        //if (Input.GetKeyDown(KeyCode.Y))
        //{
        //    genericKaren.SetThingToChase(transform);
        //}

        var vel = GetComponent<Rigidbody>().velocity.magnitude;

    }

    public void RayCasting()
    {
            // Contain info of object that was hit
            RaycastHit hitInfo;
            
            // Check what is in front of player
            if (Physics.Raycast(transform.position, transform.forward, out hitInfo, interactionDistance))
            {
                // If raycast hits object with "Elevator" tag
                if (hitInfo.transform.tag == "Elevator")
                {
                    // And if player clicks on object
                    if(press)
                    {
                        // And if player has collected all 3 collectibles: apple, egg and cheese
                        if(appleCollection && eggCollection && cheeseCollection)
                        {
                            // Send player to next scene
                            hitInfo.transform.GetComponent<SceneControl>().Interact();
                        }
                        else
                        {
                            Debug.Log("failure");
                        }
                    }

                }
                // If raycast hits object with "Elevator2" tag
                if (hitInfo.transform.tag == "Elevator2")
                {
                    // And if player clicks on object
                    if (press)
                    {
                        // And if player has collected milk
                        if (milkCollection)
                        {
                            // Send player to next scene
                            hitInfo.transform.GetComponent<SceneControl>().Interact();
                        }
                        else
                        {
                            Debug.Log("failure");
                        }
                    }
                }

                // If raycast hits object with "Elevator2" tag
                if (hitInfo.transform.tag == "Arcade")
                {
                    // And if player clicks on object
                    if (press)
                    {   
                        // Send player to next scene
                        hitInfo.transform.GetComponent<SceneControl>().Interact();
                    }
                }
            }

            // No object is clicked by default
            press = false;
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


    // Link mouse left-click binding to script from player input
    void OnFire()
    {
        press = true;
    }

    // Link space key binding to script from player input
    void OnJump()
    {
        if (isGrounded)
            _staminaController.StaminaJump();
    }

    //Link left shift key binding to script from player input
    void OnSprint()
    {
        moveSpeed = runSpeed;
        _staminaController.Sprinting();
        // right after we apply the double speed or whatever, we set the bool to true so it can't do it over and over again.
        Debug.Log("Player is sprinting");
    }

    void OnTriggerStay(Collider other)
    {   
        // Collect cheese collectible
        if (other.gameObject.tag == "CheeseCollectible")
        {
            // If player presses E on keyboard
            if (Input.GetKey(KeyCode.E) == true)
            {
                // Cheese disappears from scene
                cheese.SetActive(false);

                // Store that cheese is collected
                GM.CheeseCollected();

                // Remove cheese from inventory
                collectUI.SetActive(false);

                //Cheese is collected
                cheeseCollection = true;
            }
        }

        // Collect apple collectible
        if (other.gameObject.tag == "AppleCollectible")
        {
            // If player presses E on keyboard
            if (Input.GetKey(KeyCode.E) == true)
            {
                // Apple disappears from scene
                apple.SetActive(false);

                // Store that apple is collected
                GM.AppleCollected();

                // Remove apple from inventory
                collectUI.SetActive(false);

                // Apple is collected
                appleCollection = true;
            }
        }

        // Collect egg collectible
        if (other.gameObject.tag == "EggCollectible")
        {
            // If player presses E on keyboard
            if (Input.GetKey(KeyCode.E) == true)
            {
                // Egg disappears from scene
                egg.SetActive(false);

                // Store that egg is collected
                GM.EggCollected();

                // Remove egg from inventory
                collectUI.SetActive(false);

                // Egg is collected
                eggCollection = true;
            }
        }

        // Collect milk collectible
        if (other.gameObject.tag == "MilkCollectible")
        {
            // If player presses E on keyboard
            if (Input.GetKey(KeyCode.E) == true)
            {
                // Milk disappears from scene
                milk.SetActive(false);

                //Store that milk is collected
                GM.MilkCollected();

                // Remove milk from inventory
                collectUI.SetActive(false);

                // Milk is collected
                milkCollection = true;
            }
        }

        // Talk to NPC
        if (other.gameObject.tag == "NPC")
        {
            // If player presses E on keyboard
            if (Input.GetKey(KeyCode.E) || Input.GetKey(KeyCode.Mouse0))
            {
                // NPC dialogue plays
                loadDialogue();
            }
        }
    }

    // Player death
    void DeathPrompt()
    {
        // Death UI shows up
        deathScreen.SetActive(true);

        // Destroy player
        Destroy(gameObject);
    }
    
    
    void OnCollisionEnter(Collision collision)
    {
        // If player Collided with object tagged Death, will receive 20 damage
        if (collision.gameObject.tag == "Death")
        {          
            TakeDamage(20);
        }

        // If player Collided with object tagged Karen, will receive 10 damage
        if (collision.gameObject.tag == "Karen")
        {
            TakeDamage(10);
        }
    }

    // If player take damage, health will decrease. If health is 0, player is dead
    void TakeDamage(int damage)
    {
        // Damage taken decreases current player health
        currentHealth -= damage;

        // Set current health in health bar
        healthBar.SetHealth(currentHealth);

        // If player has 0 health, player dies
        if (currentHealth <= 0)
        {
            isDead = true;
        }
    }

    // Shows dialogue UI
    public void loadDialogue()
    {
        dialogueUI.SetActive(true);
    }

    // Hides dialogue UI
    public void endDialogue()
    {
        dialogueUI.SetActive(false);
    }
}
public static class Helpers
{
    private static Matrix4x4 _isoMatrix = Matrix4x4.Rotate(Quaternion.Euler(0, 90, 0));
    public static Vector3 ToIso(this Vector3 input) => _isoMatrix.MultiplyPoint3x4(input);
}