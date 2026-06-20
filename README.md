# unofficial-xfce4-power-profile-switcher
This is a simple GUI workaround for toggling power profiles (using `powerprofilesctl`) in Xfce. 

It is to be used as a custom menu via Xfce's **Applications Menu** to provide a simple toggle for `powerprofilesctl` to easily switch between **Performance**, **Balanced**, and **Power Saver** mode.

<img width="313" height="186" alt="screenshot" src="https://github.com/user-attachments/assets/0d7360b2-35fa-4c3a-9f35-a4d95a03441b" />

## How to setup
### I. Initial Setup
1. Clone the repository:
  - `git clone https://github.com/greanleeph/unofficial-xfce4-power-profile-switcher.git`

2. Move the `powerprofileswitcher` directory to `~/.local/share/` either via the terminal: `mv powerprofileswitcher ~/.local/share/`,
or just by copying and pasting.

3. Enter the `scripts` directory and enable each to run as program:
  - `chmod -x setbalanced.sh setperformance.sh setpowersaver.sh`

3. Move the contents inside the `icons` directory to `~/.icons`.

### II. Adding the Power Profile Switcher to the Panel
1. Add a new **Applications Menu** item to the panel.
   
2. Right click the **Applications Menu** and click "Properties".

3. Untick "Show button title" and replace the **Button Title** to "Power Profiles".

4. Change the button icon to `adjustlevels`.

5. Under **Menu File**, tick "Use custom menu file" and browse to your `powerprofilesswitcher` directory and select `pwrmenu.menu`.

## Troubleshooting
Enter `powerprofilesctl` into your terminal to verify if the selected power profile was correctly applied.
