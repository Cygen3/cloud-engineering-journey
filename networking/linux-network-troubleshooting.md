
# Lesson 13: Linux Network Troubleshooting

## Objective
Practise basic Linux network troubleshooting using Ubuntu WSL2.

## 1. Network Interface Inspection

Commands:
```bash
ip link show
ip -4 addr show
ip route
```

Observations:
- Network interfaces: lo and eth0
- eth0 status: UP and LOWER_UP
- IPv4 address: 172.20.67.210/20
- Default gateway: 172.20.64.1

## 2. Connectivity Testing

### Local connectivity
```bash
ping -c 4 127.0.0.1
```
Result: 4 packets received, 0% packet loss.

### External IP connectivity
```bash
ping -c 4 8.8.8.8
```
Result: 4 packets received, 0% packet loss.
Average response time: 43.419 ms.

### Domain resolution and connectivity
```bash
ping -c 4 googel.com
```
Result: The hostname resolved to 192.178.211.105.
All 4 packets received replies, with 0% packet loss.

Note: The hostname entered was googel.com, not google.com.

## 3. Key Learning

- ip link shows network interface status.
- ip -4 addr displays IPv4 configuration.
- ip route displays routing information.
- ping tests network reachability using ICMP.
- DNS resolves hostnames into IP addresses.
- Successful loopback testing does not prove internet connectivity.

## 4. Troubleshooting Knowledge

If an external IP responds but a domain does not resolve, investigate DNS configuration and name resolution.

## Environment
- OS: Ubuntu on WSL2
- Shell: Bash
- Network interface: eth0

## Assessment
Knowledge test: 5/5
Status: Completed

# Linux Network Troubleshooting

## Environment
- OS: Ubuntu on WSL2
- Username: koushik
- Network interface: eth0

## 1. Check Network Interfaces

Command:
ip link show

Purpose:
Displays network interfaces and their link status.

## 2. Check IPv4 Configuration

Command:
ip -4 addr show

Observed configuration:
- Interface: eth0
- IPv4: 172.20.67.210/20
- Broadcast: 172.20.79.255

## 3. Check Routing Table

Command:
ip route

Observed default gateway:
172.20.64.1

## 4. Test Network Connectivity

Commands:
ping -c 4 127.0.0.1
ping -c 4 8.8.8.8
ping -c 4 google.com

Results:
- Loopback test: successful
- External IP test: successful
- Domain name test: successful

## 5. Check DNS Resolution

Commands:
getent hosts google.com
cat /etc/resolv.conf

Purpose:
Checks hostname resolution and DNS resolver configuration.

## 6. Check Listening Ports

Commands:
ss -tuln
sudo ss -tulnp

Important findings:
- Port 22: sshd (SSH service)
- Port 53: systemd-resolve (DNS)
- UDP port 323: chronyd (time synchronisation)

## 7. Check SSH Service

Command:
sudo systemctl status ssh

Observed:
- Service: ssh.service
- Status: active (running)
- Main PID: 186

Local SSH test:
ssh localhost

Result:
Successfully connected to the local SSH server.

## Troubleshooting Sequence

1. Check network interface.
2. Check IP address and subnet.
3. Check default gateway and routing.
4. Test connectivity using ping.
5. Check DNS resolution.
6. Inspect listening ports.
7. Verify the relevant service.

## Key Learning

Linux network troubleshooting requires checking the
network interface, IP configuration, routing,
connectivity, DNS and services systematically.
