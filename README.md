# unofficial-xfce4-power-profile-switcher
This is a simple GUI workaround for toggling power profiles (using `powerprofilesctl`) in Xfce. 

It is to be used as a custom menu via Xfce's **Applications Menu** to provide a simple toggle for `powerprofilesctl` to easily switch between **Performance**, **Balanced**, and **Power Saver** mode.

<img width="313" height="186" alt="screenshot" src="https://github.com/user-attachments/assets/0d7360b2-35fa-4c3a-9f35-a4d95a03441b" />

## How to setup
### I. Initial Setup
#### 1. Clone the repository:

`git clone https://github.com/greanleeph/unofficial-xfce4-power-profile-switcher.git`

#### 2. Move the project to the correct folder

Move the `powerprofileswitcher` folder to `~/.local/share/`.

You can do this either by issuing the command `mv powerprofileswitcher ~/.local/share/` into your terminal, or simply with your file manager; cut and paste the folder into `~/.local/share/`.

#### 3. Make the scripts executable.
Navigate to the `scripts` folder inside the project.

Make each script executable: `chmod +x setbalanced.sh setperformance.sh setpowersaver.sh`.

If you prefer using a file manager, you can right-click each script, open **Properties** -> **Permissions**, and enable **"Allow this file to run as a program"**

#### 4. Install the icons
Move the icon files inside the `icons` folder to `~/.icons`.

### II. Adding the Power Profile Switcher to the Panel
1. Add a new **Applications Menu** item to the panel.
   
2. Right click the **Applications Menu** and click "Properties".

3. Untick "Show button title" and replace the **Button Title** to "Power Profiles".

4. Change the button icon to `adjustlevels`.

5. Select "Use custom menu file" and browse to your `powerprofilesswitcher` folder and select `pwrmenu.menu`.

## Verifying if it works
Enter `powerprofilesctl` into your terminal to verify if the selected power profile was correctly applied.

## Troubleshooting
### Nothing happens
Make sure the three scripts are executable:

`chmod +x setbalanced.sh setperformance.sh setpowersaver.sh`

You can verify this by running:

`ls -l`

The scripts should show executable (x) permissions.

### Icons do not appear

Verify that the icon files were moved to:

~/.icons

You may need to log out and back in, or restart the XFCE panel, for newly installed icons to appear.

### Current Profile shows in Xfce 4.18 but not in Xfce 4.20+
