on run argv
    set theQuery to item 1 of argv
    tell application "Finder" to get every disk whose ejectable is true
    repeat with theDisk in result
        tell application "Finder" to get URL of theDisk
        set diskURL to result
        if theQuery is diskURL then
            tell application "Finder" to eject theDisk
        end if
    end repeat
end run