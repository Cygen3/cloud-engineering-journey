
# Day 4 - Lesson 13: Linux Network Troubleshooting

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
