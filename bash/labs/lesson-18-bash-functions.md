# Lesson 18: Bash Functions

## Learning Objectives

In this lesson, I learned how to:
- Create and call Bash functions.
- Reuse functions in Bash scripts.
- Pass arguments and parameters to functions.
- Capture function output using command substitution.
- Manage function exit status using `return` and `$?`.
- Build a practical System Information Script.

---

## Part 1: Bash Functions

A function is a named group of commands that performs a specific task.

### Function Syntax

```bash
show_information() {
    echo "Hello!"
}

show_information
```

- `show_information()` defines the function.
- Commands inside `{ }` belong to the function.
- `show_information` calls and executes the function.

### Benefits
- Code reusability.
- Better organisation.
- Less repeated code.
- Easier maintenance.

---

## Part 2: Function Arguments and Parameters

Arguments are values passed to a function when it is called.

Parameters receive those values inside the function.

```bash
show_details() {
    echo "Name: $1"
    echo "City: $2"
    echo "Goal: $3"
}

show_details "Koushik" "West Bengal" "Cloud Engineer"
```

| Parameter | Meaning |
|---|---|
| `$1` | First argument |
| `$2` | Second argument |
| `$3` | Third argument |

The same function can be called with different arguments without changing its definition.

---

## Part 3: Returning Values and Exit Status

### Capturing Function Output

```bash
get_name() {
    echo "Koushik"
}

name=$(get_name)
echo "$name"
```

- `echo` sends text to standard output.
- `$(get_name)` executes the function and captures its output.
- The captured output is stored in the `name` variable.

### Function Exit Status

```bash
check_status() {
    return 0
}

check_status
echo $?
```

- `return 0` sets the exit status to success.
- `return 1` sets a non-zero exit status.
- `$?` contains the exit status of the most recently executed command.

**Important:** `return` sets an exit status; it does not return ordinary text.

---

## Part 4: Practical Project — System Information Script

### Project Description

Created a Bash script named `system-information.sh` to display important Linux system information.

### Functions Used

- `show_heading()`
- `show_user()`
- `show_hostname()`
- `show_date()`
- `show_os()`
- `show_uptime()`
- `show_disk()`
- `show_memory()`

### Linux Commands Used

| Command | Purpose |
|---|---|
| `whoami` | Displays current username |
| `hostname` | Displays hostname |
| `date` | Displays date and time |
| `grep` | Searches for operating system information |
| `uptime -p` | Displays system uptime |
| `df -h /` | Displays disk usage |
| `free -h` | Displays memory information |
| `chmod +x` | Makes a script executable |

### Execution

```bash
chmod +x system-information.sh
./system-information.sh
```

### Practical Results

The script successfully displayed:

- Username: `koushik`
- Hostname: `Koushik`
- Operating System: Ubuntu 26.04.1 LTS
- Current date and time
- System uptime
- Disk usage
- Memory and swap information

### Troubleshooting Experience

During the first execution, the operating system information command showed an error because the filename was misspelled.

Incorrect:

```bash
/etc/os-relese
```

Correct:

```bash
/etc/os-release
```

After correcting the filename, the script executed successfully.

---

## Lesson Assessment

Completed a six-question assessment covering:

- Function definitions and calls.
- Function execution.
- Command substitution.
- Executable permissions.
- Function execution behaviour.
- Troubleshooting.

Assessment result: 4 correct answers and 2 partially correct answers.

## Key Learning Summary

I learned how to create reusable Bash functions, pass arguments, capture function output, manage exit status, and organise a practical Linux system information script.

**Lesson 18: Bash Functions — Completed.**
