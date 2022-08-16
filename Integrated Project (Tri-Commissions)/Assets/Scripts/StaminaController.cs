using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StaminaController : MonoBehaviour
{
    [Header("Stamina Main Parameters")]
    public float playerStamina = 100.0f;
    [SerializeField] private float maxStamina = 100.0f;
    [SerializeField] private float jumpCost = 20;
    [HideInInspector] public bool hasRegenerated = true;
    [HideInInspector] public bool weAreSprinting = false;

    [Header("Stamina Regen Parameters")]
    [Range(0, 50)][SerializeField] private float staminaDrain = 0.5f;
    [Range(0, 50)][SerializeField] private float staminaRegen = 0.5f;

    [Header("Stamina Speed Parameters")]
    [SerializeField] private int slowedRunSpeed = 5;
    [SerializeField] private int normalRunSpeed = 5;

    [Header("Stamina UI Elements")]
    [SerializeField] private Image staminaProgressUI = null;
    [SerializeField] private CanvasGroup sliderCanvasGroup = null;

    // Link player controller to player script
    private Player playerController;

    private void Start()
    {
        //Get Player script
        playerController = GetComponent<Player>();
    }

    private void Update()
    {
        if (!weAreSprinting)
        {
            //if player stamina is less than maximum, replenish stamina
            if (playerStamina <= maxStamina - 0.01)
            {
                playerStamina += staminaRegen * Time.deltaTime;
                //UpdateStamina
                UpdateStamina(1);

                if (playerStamina >= maxStamina)
                {
                    //set to normal speed
                    playerController.SetRunSpeed(normalRunSpeed);
                    //reset our alpha value slider  
                    sliderCanvasGroup.alpha = 0;
                    hasRegenerated = true;
                }
            }
        }
    }

    public void Sprinting()
    {
        if (hasRegenerated)
        {
            //drain stamina while sprinting
            weAreSprinting = true;
            playerStamina -= staminaDrain * Time.deltaTime;
            UpdateStamina(1);

            if (playerStamina <= 0)
            {
                hasRegenerated = false;
                //slow the player to jump
                playerController.SetRunSpeed(slowedRunSpeed);
                sliderCanvasGroup.alpha = 0;
            }
        }

    }
    public void StaminaJump()
    {
        if (playerStamina >= jumpCost)
        {
            //drain stamina while jumping
            playerStamina -= jumpCost;
            //allow the player to jump
            playerController.PlayerJump();

            UpdateStamina(1);

 
        }

    }
    void UpdateStamina(int value)
    {
        //set stamina bar fill according to progress
        staminaProgressUI.fillAmount = playerStamina / maxStamina;

        if (value == 0)
        {
            sliderCanvasGroup.alpha = 0;
        }
        else
        {
            sliderCanvasGroup.alpha = 1;
        }
    }
}
