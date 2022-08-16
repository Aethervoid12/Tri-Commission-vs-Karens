using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    // Link slider script to slider variable
    public Slider slider;

    // Set maximum value of slider
    public void SetMaxHealth(int health)
    {
        slider.maxValue = health;
        slider.value = health;
    }

    // Set minimum value of slider
    public void SetHealth(int health)
    {
        slider.value = health;
    }

}
