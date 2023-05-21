# Launch, Focus or Hide Application Switcher

This is a very simple script that I wrote to achieve the following behaviour when switching applications:

When you press a user-defined application hotkey, one of three things happen:

1. If the application is not running, launch the app and bring it to the front
2. If the application is already running, but in the background or hidden, bring it to the front
3. If the application is already in the front, hide it

Once setup for your most used applications, it is super quick to switch between apps.
For apps that I use only occasionally, I still use the well established CMD + TAB and ALT + TAB using [AltTab](https://github.com/lwouis/alt-tab-macos).
I personally prefer CMD + TAB for switching between applications and ALT/OPTION + TAB for switching between an application's open windows.

## Installation

### Prerequisites
You have to have [Hammerspoon](https://www.hammerspoon.org/) installed on your machine.

### Automatic Setup Script
If your Hammerspoon configuration is located at `~/.hammerspoon/` (default location), you can run the script `setup.sh` to automatically copy the files to the config directory and add the required imports to the `init.lua` file.
Once executed, you simply have to tell Hammerspoon to reload the config using the menu bar application.

### Manual Setup
1. Copy `launch-focus-or-hide.lua` and `auto-reload.lua` (optional) to your Hammerspoon config directory.
2. Add the contents of this repository's `init.lua` to the `init.lua` file inside your Hammerspoon config directory. If you don't want to use the auto-reload feature, simply don't copy its import statement.
3. Tell Hammerspoon to reload it's config using its menu bar application.


## Configuration
You can set up a hotkey for every application you want quick access to.

First, specify the modifier keys that you want to use to switch applications.
```lua
local modifiers = {"alt", "ctrl", "shift"}
```

Below, add any application of your liking with a corresponding trigger key.
Make sure, that you don't define the same key twice since it will override the first hotkey.
```lua
keys["V"] = "com.microsoft.VSCode"
```

If you have imported the "auto-reload" script inside `init.lua` (automatically included if you used `setup.sh`), Hammerspoon will automatically reload the config once you save the file (as long as you don't cause any errors).

## Roadmap
- Allow users to use different modifier keys for each application
- Make unassigned alphabetic keys rotate between all applications whose name start with that key
- Make further improvements to the setup script
