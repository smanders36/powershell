## this script can find a network location and remove a specific folder from every sub folder. useful for removing something from user profile shares.
get-childitem "network location where folder is, eg \\computer\share\profiles" | foreach-object {
$path = $_.Fullname + "sub folder location where target is eg. \appdata\local\google\chrome\user data\default\cache\"
## use the whatif command until you are positive it is targeting the correct items
Remove-Item $path -Recurse -whatif
}
