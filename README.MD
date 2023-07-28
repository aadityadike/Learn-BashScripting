# Bash Scripting

## Vim

To write some thing in vim you have to first press i button to get into insert mode it will allow to insert some text in your file.
Press esc button to get out of insert mode.
you can also press a for append.
The append command will put the cursor after the current position, while the insert command will put the cursor before it.
Using the append command is like moving the cursor one character to the right, and using the insert command.
Using the insert command is like moving the cursor one character to the left, and using the append command.
You choose which depending on where you want to start typing.
Now you are in command mode you can simply type :wq means w for write the file and q for quit. But if you don't want to ignore the changes you can simply type :q!, it will ignore all the changes that you have made in current file.

To view file from command line you can simply use cat command followed by file name.

```bash
cat textfile.txt
```

Let's write some scripts, now that you know how to write file in vim let's write a mini script, head over to terminal and type touch shelltest.sh it will create a new file in your current directory (enter pwd command to know in which directory you in) open shelltest.sh with vim:
type echo Hello world!
now get out vi by simply pressing esc and :wq
now to execute that file simply type shell your are using followed by file name. now you will see hello world gets printed.

if don't want to specify shell everytime you can simply add your shell path on top of the file.
let's first get path of your shell type command echo $SHELL. your will get path for your shell in my case i am using zsh so i get path

```bash
/usr/bin/zsh
```

copy the path by ctrl + shift + c.
open shelltest.sh and hit i to get inside insert mod now just type #! and past the path by ctrl + shift + v now
your bash file may look like this:

```bash
 #!/usr/bin/zsh
echo Hello world!
```

Let's try to execute the file type ./shelltest.sh

```bash
    zsh: permission denied: ./shelltest.sh
```

Ohh, we have an error ok, the error say that we don't have permission to execute the file. we can resolve that by simply giving permissions to file
type the following command

```bash
    chmod u+x shelltest.sh
```

this command will give permission to user to execute the file.

now , let's execute one more time ./shelltest.sh tada! we have our results!
Hello World !

ok now that you have know the basis we can dive deeper, let's look at how to define variables.
type variable name it can be anything, let's take NAME= Gojo hit enter now enter echo command followed by hello $NAME and you will see hello Gojo in you terminal.
ok until now we were using variable in our terminal but now we will use variable in our script and also we are going to take user input don't worry it's going to be very easy,
lets make a new file called interactiveShell.sh and head inside that using vim,
