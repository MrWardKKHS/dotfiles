if running of application "System Settings" then
    try
        tell application "System Settings" to quit
    on error
        do shell script "killall 'System Preferences'"
    end try
    delay 0.1
end if

--  # Make sure System Preferences is not running before
--  # opening it again. Otherwise there can be an issue
--  # when trying to reopen it while it's actually closing.

repeat while running of application "System Settings" is true
    delay 0.1
end repeat

--  # Get the fully qualified POSIX pathname of the target .plist file.

set thePropertyListFilePath to ¬
    the POSIX path of ¬
        (path to preferences from user domain as string) & ¬
    ".GlobalPreferences.plist"

--  # Get the value of AppleKeyboardUIMode to determine if the
--  # 'Use keyboard navigation to move focus between controls'
--  # checkbox is checked on the System Preferences >  
--  # Keyboard > Shortcuts tab.

tell application "System Events" to ¬
    tell the property list file thePropertyListFilePath to ¬
        set keyboardNavigation to the value of ¬
            the property list item "AppleKeyboardUIMode"

if keyboardNavigation = 0 then
    --  # Check the checkbox.
    my toggleKeyboardNavagition()
end if

--  # Open System Preferences to the 
--  # Shortcuts tab of the Keyboard pane.

tell application "System Settings"
    activate
    reveal anchor "displays" of ¬
        pane id "com.apple.preference.displays"
end tell

tell application "System Events"
    key code 125 -- # down arrow key
    delay 0
    key code 125 -- # down arrow key
    delay 0
    key code 125 -- # down arrow key
    delay 0
    key code 125 -- # down arrow key
    delay 0
    key code 125 -- # down arrow key
    delay 0
    key code 125 -- # down arrow key
    delay 1.5
    key code 48 -- # tab key
    delay 0.1
    key code 49 -- # spacebar
    delay 0.1
end tell

