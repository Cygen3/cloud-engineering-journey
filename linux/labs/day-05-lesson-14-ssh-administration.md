# Day 5 – Lesson 14: SSH Administration

## Learning Objectives

- Understand SSH client and SSH server.
- Inspect SSH service status and configuration.
- Understand public and private SSH keys.
- Inspect SSH directory and file permissions.
- Understand `authorized_keys`.
- Troubleshoot SSH public-key authentication.
- Connect to Ubuntu using SSH key-based authentication.

## 1. SSH Client and Server

- `ssh`: SSH client used to initiate a secure connection.
- `sshd`: SSH server that accepts incoming SSH connections.
- Default SSH port: 22.
- `localhost`: Refers to the same computer.

## 2. SSH Service Inspection

Commands used:

```bash
sudo systemctl status ssh
systemctl is-enabled ssh
ssh -V
sudo sshd -T
```

Findings:
- SSH service was active and running.
- SSH service was enabled.
- OpenSSH client was installed.
- Server configuration showed port 22.
- Password and public-key authentication were enabled.

## 3. SSH Directory Inspection

Commands:

```bash
ls -la ~/.ssh/
find ~/.ssh/ -maxdepth 1 -type f -name "*.pub"
stat -c '%a %n' ~/.ssh
cat ~/.ssh/config
```

Observed files:

- `authorized_keys`
- `config`
- `id_ed25519`
- `id_ed25519.pub`
- `id_ed25519_github`
- `id_ed25519_github.pub`

SSH directory permission:

```text
700 /home/koushik/.ssh
```

Important permissions observed:

| File | Permission |
|---|---:|
| Private keys | 600 |
| Public keys | 644 |
| SSH config | 600 |
| authorized_keys | 600 |
| .ssh directory | 700 |

## 4. SSH Client Configuration

Configuration in `~/.ssh/config`:

```sshconfig
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_github
    IdentitiesOnly yes
```

This configuration selects the GitHub-specific private key when connecting to GitHub.

## 5. Public and Private Key Fingerprints

Commands:

```bash
ssh-keygen -lf ~/.ssh/id_ed25519.pub
ssh-keygen -lf ~/.ssh/authorized_keys
```

The initial key-based login failed because the selected public key did not match any key listed in `authorized_keys`.

## 6. Troubleshooting and Resolution

Installed the matching public key using:

```bash
ssh-copy-id -i ~/.ssh/id_ed25519.pub localhost
```

This added the public key to the account's `authorized_keys` file.

The private key remained on the client.

## 7. Successful SSH Key Authentication

Test command:

```bash
ssh -i ~/.ssh/id_ed25519 \
-o IdentitiesOnly=yes \
-o PreferredAuthentications=publickey \
-o PasswordAuthentication=no \
localhost
```

Result:
- SSH connection successful.
- Ubuntu login message displayed.
- Public-key authentication succeeded without password authentication for this connection.

Verified the logged-in user:

```bash
whoami
```

Output:

```text
koushik
```

Exited the SSH session:

```bash
exit
```

Successfully returned to the original terminal.

## 8. Important Learning Points

1. SSH client initiates a connection; SSH server accepts it.
2. `authorized_keys` stores permitted public keys.
3. Private keys must remain secret.
4. Public-key authentication requires a matching authorized public key.
5. `ssh-copy-id` can install a public key on an SSH server.
6. File permissions help protect SSH keys and configuration.
7. Fingerprints help identify and compare SSH keys.

## 9. Practical Lab Status

- [x] SSH service inspection
- [x] SSH directory inspection
- [x] SSH permissions verification
- [x] SSH configuration inspection
- [x] Public/private key understanding
- [x] Fingerprint comparison
- [x] Public-key authentication troubleshooting
- [x] Successful key-based login
- [x] SSH logout

## 10. Knowledge Assessment

Score: 4/5

Topics reviewed:
- SSH client and server
- authorized_keys
- Private key security
- Authentication troubleshooting
- SSH command interpretation

## Environment

- Operating System: Ubuntu 26.04.1 LTS
- Environment: Ubuntu on WSL2
- SSH software: OpenSSH
- User: koushik

**Lesson 14 practical work completed.**
