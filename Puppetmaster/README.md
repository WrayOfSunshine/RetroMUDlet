# RetroMUDlet-Puppetmaster

## Introduction

A script package for Puppet Masters in RetroMUD. Don't forget to install RetroMUDlet-Shared.

### Aliases

* `fw <param1>`
  * Calls the FeatherWeight script, with optional target argument. Uses iteration rather than object handling, so don't pass a target with a count or a complex object handling target.
    * Example: `fw armor`
      * Starts feather weighting all armor on ground, starting at armor 1.
    * Example: `fw`
      * Continues the feather weighting process on the existing feather weight target at the existing count.

### Scripts

All called via aliases or scripts.

### Triggers

All used by aliases or scripts.
