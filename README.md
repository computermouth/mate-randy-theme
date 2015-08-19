#randyTheme  
is a script that will randomly select RGB values and apply 
them to the Mate desktop's(and strictly the Mate desktop) gradient 
wallpaper, theme selected_bg_color(window borders {depends on theme 
compatibility} and selected item 
backgrounds), and mate-terminal's default profile text color.

For the script to function properly:  
+ Choose a gtk theme with a 
modifiable color set (you may even need to alter the colors to 
initialize the use of the gsettings record).
+ Be sure that the terminal is set to use the default profile, and 
uncheck 'Use system colors'
+ Set wallpaper to gradient rather than an image, script will only alter 
bottom gradient color.

Failing to meet these conditions will result in no harm, but the changes 
won't appear in their respective sections. This can also be used to your 
advantage to pick and choose which features to use.

The script needs to run on startup. A reference can be added to 
~/.bashrc, but since the terminal will be open when the script is run 
any time beyond first login, the terminal text color AND window colors 
will not change. As such, I'd add it to Mate's built in 'Startup 
Applications'.

(I use the Traditional Green widget theme, with the Albatross window 
borders. *Albatross's window titlebar is not tied to selected_bg_color.)
