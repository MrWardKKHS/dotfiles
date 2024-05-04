tell application "System Events"
    set img to (some item of (get every item of folder "~/backgrounds"))
    tell every desktop to set picture to POSIX path of img
end tell
