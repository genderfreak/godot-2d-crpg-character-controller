extends Area2D
class_name InteractableComponent

## A component which can be interacted with by a CRPG controller character.
## The CRPG character calls interact() when the player clicks on it and it is
## within range.
## Extend this functionality by extending this script and overwriting interact()

func interact():
	print("Interacted with %s" % self)
