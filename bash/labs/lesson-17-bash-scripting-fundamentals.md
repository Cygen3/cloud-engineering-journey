# Day 9 — Lesson 17: Bash Scripting Fundamentals

## Learning Objectives
- Understand Bash scripting.
- Create and execute shell scripts.
- Use variables and user input.
- Display formatted output.
- Check command exit status.
- Use conditional statements and logical operators.
- Practise loops and loop control.

## Part 1: Bash Fundamentals
- Bash means Bourne Again Shell.
- Bash is a command-line interpreter.
- A Bash script contains commands saved in a file.
- The common script extension is `.sh`.
- Shebang: `#!/usr/bin/env bash`
- Nano is used to edit scripts.
- Bash executes scripts.

## Part 2: Script Permissions and Output
- `chmod +x` adds executable permission.
- `./script.sh` executes a script directly.
- `bash script.sh` runs a script through Bash.
- `echo` displays text.
- `printf` provides formatted output.
- `\n` creates a new line.
- `%s` is a string placeholder.

## Part 3: Variables, Input and Conditions
- Variables store information.
- `$variable` accesses a variable's value.
- `read -r` accepts user input.
- Double quotes expand variables.
- Single quotes preserve literal text.
- `#` starts a comment.
- `$?` stores the previous command's exit status.
- Exit status `0` normally means success.
- Non-zero status normally indicates failure or another condition.

### Conditional Statements
- `if` checks a condition.
- `else` runs when the previous condition is false.
- `elif` checks another condition.
- `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le` are numeric comparison operators.
- `&&` runs the next command when the previous command succeeds.
- `||` runs the next command when the previous command fails.

## Part 4: Loops and Loop Control
### For Loop
Repeats commands for a list of values.

### While Loop
Repeats commands while its condition remains true.

### Break
Stops the entire loop.

### Continue
Skips the current iteration and moves to the next one.

## Practical Project: Number Analysis
Created and tested `number-analysis.sh`.

Project features:
- Accepts a number from the user.
- Checks whether the input is greater than zero.
- Uses a while loop to count numbers.
- Skips number 5 using `continue`.
- Stops at number 10 using `break`.
- Displays a completion message.

### Test Results

Input: 12

Expected verified behaviour:
- Displays numbers 1, 2, 3 and 4.
- Skips 5.
- Displays numbers 6, 7, 8 and 9.
- Stops at 10.
- Displays the completion message.

Input: 5

- Displays numbers 1 through 4.
- Completes when the loop condition becomes false.

Input: 0

- Displays the invalid-input message.
- Completes the program.

## Lesson Completion
All four parts completed.
Practical project tested successfully.
Final practical assessment completed.
