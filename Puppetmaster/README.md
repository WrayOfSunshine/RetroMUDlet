# RetroMUDlet-Puppetmaster

## Introduction

A script package for Puppet Masters in RetroMUD. Don't forget to install RetroMUDlet-Shared.

### Aliases

* `fw <target>`
  * Calls the FeatherWeight script, with optional target argument.
  * Uses iteration to handle all cases where feather weight isn't castable (too light and already buoyant).
  * Example: `fw armor`
    * Starts feather weighting all armor on ground, starting at armor 1.
  * Example: `fw`
    * Continues the feather weighting process on the existing feather weight target at the existing count.

### Scripts

All called via aliases or scripts.

### Triggers

All used by aliases or scripts.
