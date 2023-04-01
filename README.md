👋 Welcome to my dotfiles repository! This is where I store my personalized desktop configuration. 🖥️

## Polybar
- Media Controler (Browser, Spotify, media player): This module allows you to control media playback from your browser or media player directly from the Polybar panel.
- Audio/Microphone Controler: This module allows you to control the volume and microphone settings directly from the Polybar panel.
- Mem/CPU Usage: This module displays information about your system's memory and CPU usage in real-time.
- Date: This module displays the current date and time.
- SysTray: This module displays icons for running applications and services in the system tray area of the panel.

## NeoVim
- AutoCompletion (including function jumping and other useful features): This feature makes coding and writing more efficient by suggesting completions as you type and allowing you to jump to functions or variables quickly.
- Discord Status: This module allows you to display your current Discord status in your NoeVim statusline.
- FZF: This plugin provides a fast and powerful fuzzy search feature for finding files and text within files.
- NerdTree: This plugin provides a tree-like file explorer for navigating and opening files directly from within NoeVim.
- AsyncRun: This plugin allows you to asynchronously run commands in the background without blocking the editor.
- vimwiki: This plugin provides a personal wiki system within NoeVim for organizing notes, documents, and ideas.
- Live markdown preview (in browser): This feature allows you to preview your markdown files in a web browser as you edit them.
- Live markdown preview (in terminal): This feature allows you to preview your markdown files directly in the terminal as you edit them.
- Git integration: This feature allows you to manage version control directly from NoeVim, including committing changes, viewing diffs, and resolving merge conflicts.


## wm independent hotkeys

- `super + F2`: Center the window using `bspc`.

- `super + Return`: Open `alacritty` terminal.

- `alt + d`: Open `rofi` program launcher with "run" mode.

- `super + ctrl + p`: Toggle `polybar`.

- `Print`: Take a full screenshot using `flameshot` and save it to the `PICTURES` directory.

- `super + Print`: Open `flameshot` GUI.

- `super + alt + Print`: Take a screenshot with a 5-second delay using `flameshot` and save it to the `PICTURES` directory.

- `super + b`: Balance the current desktop using `bspc`.

- `super + Escape`: Reload the configuration files for `sxhkd`.

## bspwm hotkeys

- `super + alt + q`: Quit `bspwm`.

- `super + alt + r`: Restart `bspwm`.

- `super + q`: Close and kill the current window using `bspc`.

- `super + minus`: Hide the current node or restore a hidden node using `bspc`.

- `super + shift + minus`: Restore the last hidden node using `bspc`.

- `super + {h,j,k,l}`: Focus the node in the given direction using `bspc`.

- `super + {Left,Down,Up,Right}`: Focus the node in the given direction using `bspc`.

- `super + button{4,5}`: Increase or decrease the window gap of the focused desktop using `bspc`.

- `super + alt + button{4,5}`: Increase or decrease the global window gap using `bspc`.

- `super + alt + n`: Swap the current node with the biggest node using `bspc`.

- `super + {a,s,d,f}`: Set the window state using `bspc`.

- `alt + space`: Toggle the floating or tiled state of the current window using `bspc`.

- `super + g`: Set the sticky flag for the current window using `bspc`.

- `super + alt + {m,x,z}`: Set the marked, locked, or private flag for the current window using `bspc`.

- `super + {_,shift + }{h,j,k,l}`: Focus the node in the given direction using `bspc`.

- `alt + {_,shift + }Tab`: Focus the next or previous node in the current desktop using `bspc`.

- `super + alt + {Left,Right}`: Focus the previous or next desktop using `bspc`.

- `super + shift + {Left,Right}`: Focus the older or newer node in the focus history using `bspc`.

- `super + {_,shift + }{1-9,0}`: Focus or send the current window or desktop to the given desktop using `bspc`.

- `super + ctrl + {Right,Left}`: Move the current window or desktop to the next or previous desktop using `bspc`.

- `super + {grave,Tab}`: Focus the last node or desktop using `bspc`.

- `super + ctrl + {h,j,k,l}`: Preselect the direction using `bspc`.

- `super + ctrl + {1-9}`: Preselect the ratio using `bspc`.

- `ctrl + alt + space`: Cancel the preselection for the focused node using `bspc`.

- `super + ctrl + shift + space`: Cancel the preselection for the focused desktop using `bspc`.



If you're interested in replicating my setup, feel free to clone this repository and use my dotfiles as a starting point. I recommend reading through each configuration file carefully and customizing it to suit your needs.

If you have any questions or feedback, feel free to reach out to me. I hope you find my dotfiles setup useful!

![image](https://user-images.githubusercontent.com/45688522/229299485-c01b3764-3269-41aa-bbd3-34c378fefb09.png)
