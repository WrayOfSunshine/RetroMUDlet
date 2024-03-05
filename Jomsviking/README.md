# RetroMUDlet-Jomsviking

## Introduction

A script package for Jomsvikings in RetroMUD. Don't forget to install RetroMUDlet-Shared.

### Aliases

* `oil <param1>`
  * Calls the Weatherize script, with optional target argument.
  * Now uses object handling internally - sends "use weatherize at max 1 all (target) except all weatherized".
    * Example: `oil armor`
      * Starts weatherizing all armor on ground that is not yet weatherized.
    * Example: `oil`
      * Continues the weatherization process on the existing weatherize targets.
* `makerunes`
  * Calls the Rune Maker script, which handles all the necessary steps to make one set of 24 runes.
* `duskrune <target>`
  * Carves a rune of dusk on the target.
  * No iteration or logic applied.
* `dawnrune <target>`
  * Carves a rune of dawn on the target.
  * No iteration or logic applied.
* `runedoor <target>`
  * Carves a door rune onto the target door.
  * No iteration or logic applied.
  * Defaults to "door" if no argument given.
* `findchip`
  * Finds a single wood chip. Will continue RuneMaker process if it was interrupted.
  * This should probably never be used, but I wanted it to be an option for those who want to use it for some reason.

### Scripts

All called via aliases or other scripts.

### Triggers

All used as part of aliases or scripts.
