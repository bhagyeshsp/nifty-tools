# In my daily workflow, I use some codes that help me work better.
Feel free to modify, improve and use for your purpose.

## 1. WSL to Windows Path Converter
I use Windows Subsystem for Linux (WSL) in my Windows environment.
Challenge: Whenever I request a file path, most of them are returned in WSL format. (The <username> would be your WSL system username.)
For example: `/home/<username>/.rbenv/versions/3.2.0/lib/ruby/gems/3.2.0/gems/minima-2.5.2`

I can't copy-paste this path in my Windows Explorer or feed it to my Text Editor to navigate to.
Because the real path in Windows would be this:
`\\wsl$\Ubuntu-22.04\home\<username>\.rbenv\versions\3.2.0\lib\ruby\gems\3.2.0\gems\minima-2.5.2`

So, I created a function that I can call to convert the path right in the Terminal. The output path would be automatically copied to the clipboard and also, you can click on it and open in your Text Editor.

### Steps
Please note, these steps have worked in WSL Terminal with Ubuntu-22.04 install.

**Step-1**

In your terminal, run:
```bash
nano ~/.bashrc
```
(or `nano ~/.zshrc` if you’re using Zsh)

**Step-2**

The `bashrc file` will open in your terminal. Use arrow-keys and Page-Down to reach end of the file.
Paste the whole content of [wsl2win_converter.bash](./wsl2winconverter.bash) file.

After pasting, you will need to save the added code to the bashrc file.
If your `bashrc file` is open in `nano` editor, this is how to save the changes and exit:
Press `Ctrl + X`, then `y`, followed by `Enter`.

**Step-3**

Now, close and reopen the Terminal.
OR run:
```bash
source ~/.bashrc
```
Now, the Terminal is ready to convert the path.

**Step-4**

Run the converter in the Terminal
```bash
wsl2win /home/<username>/.rbenv/versions/3.2.0/lib/ruby/gems/3.2.0/gems/minima-2.5.2
```
The output would be something like this:
```bash
The path is converted and added to your clipboard:
\\wsl$\Ubuntu-22.04\home\<username>\.rbenv\versions\3.2.0\lib\ruby\gems\3.2.0\gems\minima-2.5.2
```
**Conclusion**

Now, this function is permanent part of your workflow. You can invoke it anytime you need.