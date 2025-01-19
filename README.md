# HealingAlert-WoW-AddOn

**Healing Alert** is a lightweight World of Warcraft addon that notifies players when their energy or mana drops below 75% of its initial value. The addon displays an on-screen alert and plays a sound, helping players manage their energy levels efficiently during gameplay.

## Features

- Displays a prominent on-screen warning when energy/mana drops below 75%.
- Plays an alert sound for added awareness.
- Automatically checks energy levels at regular intervals.

## Installation

1. Download the addon files and place them in your World of Warcraft addons folder: path_to_wow_folder/retail/Interface/AddOns/HealingAlert
2. Ensure the file structure looks like this: HealingAlert/ ├── HealingAlert.lua ├── HealingAlert.toc └── phone_alert.mp3 (this can be an alert of your choice)
3. Restart World of Warcraft or reload the UI using `/reload`.

## Usage

1. Log into the game.
2. The addon will automatically start monitoring your energy/mana levels.
3. If your energy drops below 75% of its initial value, an alert message will appear on the screen, and a sound will play.

## Code Overview

### Main Functions

- `getInitialPowerValue()`: Captures the player's initial energy/mana value at login.
- `getAlertingFrame()`: Creates the UI elements for displaying the warning message.
- `comparePowerValue(initialValue)`: Compares the current energy/mana value to the threshold and triggers the alert if needed.
- `alertHandler()`: Continuously checks the player's energy/mana every second.

### Key Variables

- `AlertingFrame`: The visual frame for the warning message.
- `InitialPowerValue`: The energy/mana value recorded when the player logs in.

## Requirements

- World of Warcraft client.
- Tested on the retail version of the game.
