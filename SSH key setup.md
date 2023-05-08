# Link your GitHub Account with SSH Key (Linux and Windows)

An SSH key is a cryptographically secure identifier.
GitHub uses SSH keys to allow you to upload to your repository without having to type in your username and password every time.

First, we need to see if you have an SSH key already installed. Type this into the terminal:

```shell
> ls ~/.ssh/id_rsa.pub
```

Not: Must be Powershell (Core) on Windows.

If the message in the console contains No such file or directory, then you don’t have an SSH key, and you’ll need to create one. If you do not see No such file or directory in the output, you already have a key; proceed to step 2.4.

To create a new SSH key, run the following command inside your terminal. The -C flag followed by your email address ensures that GitHub knows who you are.

```shell
> ssh-keygen -C iansedano@gmail.com
```

When it prompts you for a location to save the generated key, just push Enter.
Next, it will ask you for a password; enter one if you wish, but it’s not required.

# Link Your SSH Key with GitHub

First, you’ll navigate to where GitHub receives our SSH key. Log into GitHub and click on your profile picture in the top right corner. Then, click on Settings in the drop-down menu.

Next, on the left-hand side, click SSH and GPG keys. Then, click the green button in the top right corner that says New SSH Key. 

Now you need to copy your public SSH key. To do this, we’re going to use a command called cat to read the file to the console. (Note that the .pub file extension is important in this case.)

```shell
> cat ~/.ssh/id_rsa.pub
```

Highlight and copy the output, which starts with ssh-rsa and ends with your email address.


# Testing your key

Follow the directions in this article from GitHub to verify your SSH connection. If the output doesn’t correctly match up, then try going through these steps again or come to the Discord chat to ask for help.

```shell
> ssh -T git@github.com
```

https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection

# link projects using SSH key

Create Repository on Github

On repository page check that SSH has been selected and then copy the URL.

Now, switch back over to the terminal

    git remote add origin <SSH URL from above>
    git push -u origin master


