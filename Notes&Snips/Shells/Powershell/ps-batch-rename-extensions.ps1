Get-ChildItem *.jpeg | Rename-Item -newname { $_.name -replace '.jpeg','.jpg' }


# Rename all file extensions in a folder and its sub-folders
# To rename extensions in the main folder as well as all its sub-folders, you just have to add the -Recurse parameter to the above command. This will give you something likes this:

dir -Recurse *.jpeg | Rename-Item -newname { $_.name -replace '.jpeg','.jpg' }

# Dir is just an alias for Get-ChildItem.


Dir *.jpeg | rename-item -newname { [io.path]::ChangeExtension($_.name, "jpg") }