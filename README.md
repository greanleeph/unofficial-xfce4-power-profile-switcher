# xfce4-power-profile-switcher
This is a simple GUI workaround for toggling power profiles (using `powerprofilesctl`) in Xfce. 

It is to be used as a custom menu via Xfce's **Applications Menu** to provide a simple toggle for `powerprofilesctl` to easily switch between **Performance**, **Balanced**, and **Power Saver** mode.

<img width="334" height="192" alt="screenshot" src="https://github.com/user-attachments/assets/63e7d3dc-1418-4d0b-9e69-2f5214c2ed34" />

## *Note: Since this is still a work in progress; a lot of things implemented are still temporary, setting this up is quite tedious, and it may not work perfectly.*

## How to setup
### I. Initial Setup
1. Clone the repository:
  - `git clone github.com/greanleeph/xfce4-power-profile-switcher`

2. Move the `powerprofileswitcher` directory to `~/.local/share/` either via the terminal: `mv powerprofileswitcher ~/.local/share/`,
or just by copying and pasting.

3. Enter the `powerprofileswitcher` directory and open each `.desktop` file using your text editor of choice and replace "username" in the `Exec=` line to be your actual username.
  - E.g. `Exec=sh /home/johndoe/.local/share/powerprofileswitcher/scripts/setbalanced.sh`

4. Do the same for `pwrmenu.menu`, replace "username" to your actual username.

### II. Adding the Power Profile Switcher to the Panel
1. Add a new **Applications Menu** item to the panel.
   
2. Right click the **Applications Menu** and click "Properties".

3. Untick "Show button title" and replace the **Button Title** to "Power Profiles".

4. Change the button icon to an appropriate icon.

5. For the **Menu File**, tick "Use custom menu file" and browse for `pwrmenu.menu`.

## Troubleshooting
Enter `powerprofilesctl` into your terminal to verify if the selected power profile was correctly applied.

Also double check the paths if they are correct because that is the most likely culprit when things don't work properly.
