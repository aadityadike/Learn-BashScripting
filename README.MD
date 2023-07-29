Hey there, when it comes to developing CLI applications or working with DevOps, you will find shell scripting everywhere. While some people claim that Python and Go have replaced shell scripting. However, I have seen many open-source projects still using shell scripting, and companies often expect candidates to be proficient in it.

So now that we know that shell scripting is important and useful, let's explore the areas where you can apply shell scripting. After that, we will dive into learning shell scripting itself. We will be following a hands-on approach, which means you will be typing all the commands and writing scripts.

## where we can use shell script?

- Automating the code compiling process.
- Running a program or creating a program environment.
- Completing batch Manipulating files.
- Linking existing programs together.
- Executing routine backups.
- Monitoring a system.

Instead of directly jumping into scripting, we will first take a look at what Vim is and how we can use it in our hands-on approach. Although you can use a normal text editor, that would be too easy, and you would miss out on the whole essence of shell scripting. Therefore, in this blog session, I will use Vim as the text editor, and we will also be executing some Linux commands to run our script. Let's get started!

## Basics of Vim

To write something in Vim, you first have to press the `i` button to enter insert mode. This mode allows you to insert text into your file. Press the `Esc` button to exit insert mode. Additionally, you can use `a` to append text.

You can save and exit the file by typing `:wq` (`w` for write and `q` for quit). If you want to discard the changes, you can use `:q!` to ignore all the modifications made to the current file. To use save and exit commands you need to get out of insert or append mode.

## Let's Write and Execute Scripts

Now that you know how to create and edit files in Vim, let's dive into writing some Bash scripts. To begin, open your terminal and create a new file named [`shelltest.sh`](http://shelltest.sh) using the `touch` command:

```bash
touch shelltest.sh
```

Make sure you are in the desired directory (use the `pwd` command to verify). Next, open the newly created [`shelltest.sh`](http://shelltest.sh) file with Vim:

1. Type: `echo Hello world!`
2. Press: `Esc`
3. Type: `:wq`

To execute the script, simply type the shell you are using followed by the file name. For example, if you're using Bash, enter:

```bash
bash shelltest.sh
```

If you don't want to specify the shell every time, you can add your shell's path at the top of the file. To find the path of your shell, use the command:

```bash
echo $SHELL
```

For instance, if the output is `/usr/bin/zsh`, you are using Zsh. Copy the path using `Ctrl + Shift + C`.

Now, open [`shelltest.sh`](http://shelltest.sh) again with Vim, press `i` to enter insert mode and type `#!` followed by pasting the path using `Ctrl + Shift + V`. This sets the shell path at the top of the script:

```bash
#!/usr/bin/zsh
echo "Hello world!"
```

Save and exit the file. Now your Bash script is ready to run.

Let's try to execute the file by typing:

```bash
./shelltest.sh
```

If you encounter the error message: `zsh: permission denied: ./`[`shelltest.sh`](http://shelltest.sh), it means you don't have permission to execute the file. You can resolve this by granting execute permission to the file using the following command:

```bash
chmod u+x shelltest.sh
```

The `chmod u+x` command grants the user execute permission. Now, try executing `./`[`shelltest.sh`](http://shelltest.sh) again. You should see the output: **Hello World!**

## Using Variables in Scripts

In Bash scripting, variables are used to store and manipulate data. They allow you to keep track of information that can change or be reused throughout the execution of your script. Bash variables are case-sensitive, and by convention, they are written in uppercase in bash. here is an example you can use a variable in Bash:

```bash
#!/usr/bin/zsh
FIRST_NAME=SATORU
LAST_NAME=GOJO

echo I AM $FIRST_NAME $LAST_NAME. NICE TO MEET YOU!
```

To access the value stored in a variable, you need to prepend a dollar sign ($) before the variable name. This tells Bash to fetch the value associated with that variable.

## Take Input from the user

Create a new file and open it with Vim. Inside Vim, type the following code:

```bash
#!/usr/bin/zsh
echo "Hey there, what's your First name?"
read FIRST_NAME

echo "What's your Last name?"
read LAST_NAME

echo "Have a good day $FIRST_NAME $LAST_NAME."
```

In this script, we ask the user to enter their first and last names and then use the `read` command to store the input into `FIRST_NAME` and `LAST_NAME` variables. Run the above code snippet in your terminal.

## Positional Arguments

Bash commands can take arguments at specific positions, counted from one (0 is reserved for the shell). Let's look at a simple example:

**Enter the following code in your script:**

```bash
#!/usr/bin/zsh
echo "Good Morning $2 $1"
```

If you execute this script with the values `./file_name gojo satoru`, it will output: `Good Morning satoru gojo`. Here, we tell the script to take the second argument first (`$2`) and then the first argument (`$1`).

## Input & Output Redirection

### Output Redirection

Output redirection allows us to direct the output of a command to a file or append it to the end of the file. The `>` symbol is used to redirect output, while `>>` is used to append output to the end of the file.

Let's understand this with an example:

```bash
echo "Hello World" > Hello.txt
echo "Have a Good day" >> Hello.txt
```

In the above example, the first command will write `Hello World` to `Hello.txt`, and the second command will append `Have a Good day` to the end of `Hello.txt`.

### Input Redirection

Input redirection allows us to take input from a file or an input stream. The `<` symbol is used for input redirection.

```bash
cat < Hello.txt
```

In this command, the contents of `Hello.txt` are used as input to the `cat` command and the contents are printed to the terminal.

Additionally, `<<` is used for a here document, and `<<<` is used for a single word here document.

```bash
cat << EOF
Hey
I am aditya
Nice to meet You
EOF
```

The above command takes input from the lines until the word `EOF` is repeated.

```bash
wc -c <<< "Hello"
```

In this command, the string "Hello" is used as input for the `wc` command with the `-c` flag to count the number of characters. (it takes only `strings`)

## Comparison

In Bash, you can use the `test` command to compare strings, but most people prefer using square brackets for string comparisons. Enter the following command one by one :

```bash
[ "hello" = "hello" ]

echo $?
```

In the above command, the strings "hello" and "hello" are compared. If the comparison is successful, the exit status will be `0`, indicating success. If the comparison fails, the exit status will be `1`, indicating failure.

You can use the exit status codes to check the success or failure of commands in scripts. The following table shows some common exit status codes:

| Exit Status Code | Description                    |
| ---------------- | ------------------------------ |
| 0                | Success                        |
| 1                | General Errors                 |
| 2                | Misuse of shell builtins       |
| 126              | Command invoked cannot execute |
| 127              | Command not found              |
| 128              | Invalid argument to exit       |
| 128+n            | Fatal error signal "n"         |
| 130              | Script terminated by Control-C |
| 255              | Exit status out of range       |
