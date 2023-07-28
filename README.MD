# Bash Scripting

## Basic of Vim

To write something in Vim, you first have to press the `i` button to enter insert mode. This mode allows you to insert text into your file. Press the `Esc` button to exit insert mode. Additionally, you can use `a` to append text.

Now that you are in command mode, you can save and exit the file by typing:`wq` (w for write and q for quit). If you want to discard the changes, you can use:`q!` to ignore all the modifications made to the current file.

To view a file from the command line, you can use the `cat` command followed by the file name. `cat textfile.txt`

Let's write some scripts now that you know how to write files in Vim. To begin, head over to the terminal and type `touch shelltest.sh`. This will create a new file in your current directory (use the `pwd` command to know which directory you are in). Open `shelltest.sh` with Vim:

1. Type: `echo Hello world!`
    
2. Press: `Esc`
    
3. Type: `wq`
    

To execute the file, simply type the shell you are using followed by the file name. For instance, if you're using Bash, type: `bash shelltest.sh`

If you don't want to specify the shell every time, you can simply add your shell's path at the top of the file. To get the path of your shell, type the command `echo $SHELL`. In my case, I am using Zsh, and the path is `/usr/bin/zsh`. Copy the path using `Ctrl + Shift + C`.

Open `shelltest.sh` again, press `i` to enter insert mode, and type `#!` followed by pasting the path using `Ctrl + Shift + V`. Now your bash file may look like this:

Let's try to execute the file by typing `./shelltest.sh`. If you encounter the following `error:zsh: permission denied: ./shelltest.sh`

It means you don't have permission to execute the file. You can resolve this by giving execute permission to the file using the following command: `chmod u+x shelltest.sh`

This command grants the user permission to execute the file. Now, try executing `./shelltest.sh` again. Voilà! You should see the output: **Hello World!**
