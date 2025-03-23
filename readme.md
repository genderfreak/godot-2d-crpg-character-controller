# Godot 2D CRPG Character Controller
This addon is a very basic drag and drop solution for creating a CRPG world that a player can explore and interact with. Included is a script for a character the player can use mouse clicking to navigate with inside of a NavigationRegion2D, and a camera that allows for zooming in and out. Also are interactable components, which may be added to objects and extended with GDscript to add functionality to by overriding the interact() function.

To use, create a NavigationRegion2D with your world. Add the crpg_character2d scene into this scene. In your input map, bind actions for movement and zooming. By default, these actions should be mapped to "left_click" to navigate, and "zoom_in" and "zoom_out" for camera control.

### Attribution

Icon from Delapouite @ game-icons.net
