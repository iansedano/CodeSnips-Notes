Here's how you can remove a committed file from your Git repository and add it to `.gitignore`.

1. **Add to .gitignore**: Open your `.gitignore` file and add the file path you want to ignore.
    ```
    echo 'your-file.ext' >> .gitignore
    ```
    
2. **Untrack the File**: Run this command to untrack the file from Git, but keep it in your working directory.
    ```
    git rm --cached your-file.ext
    ```
    
3. **Commit Changes**: Commit the updated `.gitignore` and removal of the file.
    ```
    git commit -m "Removed your-file.ext and updated .gitignore"
    ```
    
4. **Push**: Finally, push the changes to your remote repository.
    ```
    git push
    ```
