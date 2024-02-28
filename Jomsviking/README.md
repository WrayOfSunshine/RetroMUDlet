# RetroMUDlet-Jomsviking

## Introduction

A script package for Jomsvikings in RetroMUD. Don't forget to install RetroMUDlet-Shared.

### Aliases

* `oil <param1>`
  * Calls the Weatherize script, with optional target argument. Uses iteration rather than object handling, so don't pass a target with a count or a complex object handling target.
    * Example: `oil armor`
      * Starts weatherizing all armor on ground, starting at armor 1.
    * Example: `oil`
      * Continues the weatherization process on the existing weatherize target at the existing count.
* `makerunes`
  * Calls the Rune Maker script.
    * Passes "runes" if the variable state suggests we are continuing an existing session.
* `duskrune <target>`
  * Carves a rune of dusk on the target. No iteration/script backing.
* `dawnrune <target>`
  * Carves a rune of dawn on the target. No iteration/script backing.
* `runedoor <target>`
  * Carves a door rune onto the target door. No iteration/script backing. Defaults to "door" if no argument given.

### Scripts

All called via aliases or other scripts.

### Triggers

All used as part of aliases or scripts.
