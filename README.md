# Tri-Commission-vs-Karens

## GroceryRUN Integrated Project

## Controls
W - Forward  
A - Left  
S - Backwards  
D - RIght  

Left Click - Interact with Elevator/Arcade Objects and NPC  

E - Collect Objects or Interact with NPC  

## Limitations & Bugs
- Stamina Bar only works when jumping, sprinting can't affect it right now  
- Health loss is detected via collision rather than by the AI attacking, so the time the damage is taken and the time of the attack animation is desynced  
- Going to the Arcade scene via 1st Floor after collecting the necessary objects to enter the 2nd Floor will reset the 1st Floor upon exiting the Arcade Scene. This is unpreventable as it is loading a new scene and removes the settings of the session before.  
- Talking with NPC doesn't remove the dialogue box unless you click on the dialogue box, was intended that clicking anywhere would remove it, but we ran out of time to implement this
- Soda bottles are too brightly lit due to some lighting issues
- We were unable to utilise some assets as "collectibles" due to the fact that they were multiple assets grouped into one object, and thus did not have a consistent MeshRenderer to highlight when the player got close to the object
- Hostile and Boss AIs are weird due to their patrolling and lack of field of view, it is possible to completely outrun them without worry, and their animations aren't fully cohesive (boss AI will suddenly freeze mid animation but continue following the player)
- Due to lack of time and constraints with working with an isometric camera view, the game scenes are small and not as expansive as originally planned in the scope of the design phase of the project

# How to play
- On the 1st Floor, collect the Egg, Cheese, and Apple objects. 
- Eggs are in the dry goods shelf
- Apples are in the Fruits & Veggies shelf
- Cheese is in the dairy shelf
- When approaching an object that is collectable, a popup will tell you to collect it by pressing E. The object in question will also glow while in your field of view
- After collecting all three items, proceed to the 2nd Floor
- On the 2nd floor, make your way past the destroyed rooms and deranged zombies and reach the shelf with the Milk and a Roaming Boss next to it
- Collect the milk using E once again
- Return to the Elevator and click on it to Escape and beat the game


## External Assets Used From Unity Asset Store
- 4K PBR Realistic Ground Textures  
- Food Pack Mixed  
- FoodAndGrocery  
- Grass And Flowers Pack 1  
- Happy, Bouncy, Social  
- Horror Ambient Sounds Pack  
- KajamansRoads  
- Minimal UI Sounds  
- Polygon zombie package  
- Simple Buttons  
- SimpleNaturePack  

### Other External Assets
- Mixamo Character Models  
- Mixamo Animations  
