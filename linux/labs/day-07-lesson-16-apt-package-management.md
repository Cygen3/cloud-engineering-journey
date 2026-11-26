
#Lesson 16: Linux Package Management with APT

## Objective
Learn Linux package management using APT.

## Environment
- OS: Ubuntu 26.04 (WSL2)
- APT version: 3.2.1

## Commands Practised

| Command | Purpose |
|---|---|
| sudo apt update | Refresh package information |
| sudo apt upgrade --simulate | Preview package upgrades |
| sudo apt install --simulate nginx | Preview Nginx installation |
| apt show nginx | Display package information |
| apt-cache depends nginx | Inspect dependencies |
| dpkg -s nginx | Check installation status |
| apt-cache policy nginx | Check installed and candidate versions |
| sudo apt remove --simulate nginx | Preview package removal |

## Practical Observations

### 1. Package Information
Nginx version observed:
1.28.3-2ubuntu1.14

### 2. Package Dependencies
Observed dependencies:
- libc6
- libcrypt1
- libpcre2-8-0
- libssl3t64
- zlib1g
- nginx-common

A package dependency is another software package that a program needs to work properly.

### 3. Installation Status
Command: dpkg -s nginx

Result: Nginx was not installed.

### 4. Candidate Version
Command: apt-cache policy nginx

- Installed: (none)
- Candidate: 1.28.3-2ubuntu1.14
- Repository priority: 500

### 5. Important Concepts
- apt update refreshes repository information.
- apt upgrade upgrades installed packages.
- apt remove removes a package but normally retains configuration.
- apt purge removes a package and its configuration files.
- Suggested packages are optional recommendations.
- apt autoremove identifies automatically installed packages that are no longer required.

## Assessment
Final assessment: 5/5

## Learning Outcome
Learned to inspect packages, dependencies, installation status, candidate versions and repository information.

All installation, upgrade and removal operations in this practical exercise were simulated where indicated. Nginx was not installed.
