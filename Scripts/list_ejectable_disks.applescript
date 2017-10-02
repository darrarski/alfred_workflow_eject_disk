on run argv
    set theQuery to item 1 of argv
    set output to "<?xml version=\"1.0\"?>"
    set output to output & "<items>"

    tell application "Finder" to get every disk whose ejectable is true
    repeat with theDisk in result
        tell application "Finder" to get name of theDisk
        set diskName to result
        if theQuery is "" or diskName contains theQuery then
            tell application "Finder" to get URL of theDisk
            set diskURL to result
            set output to output & "<item uid=\"" & diskURL & "\" arg=\"" & diskURL & "\">"
            set output to output & "<title>Eject " & diskName & "</title>"
            set output to output & "<subtitle>" & diskURL & "</subtitle>"
            set output to output & "</item>"
        end if
    end repeat

    set output to output & "</items>"
    return output
end run