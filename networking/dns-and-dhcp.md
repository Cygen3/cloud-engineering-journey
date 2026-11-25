
# Day 4 - Lesson 12: DNS and DHCP in Linux

## 1. DNS (Domain Name System)

DNS translates domain names into IP addresses.

Example:
- Domain: google.com
- DNS resolver: 10.255.255.254 (observed in my WSL environment)

### Commands Practised

```bash
cat /etc/resolv.conf
getent hosts google.com
ping -c 4 google.com
```

## 2. DHCP (Dynamic Host Configuration Protocol)

DHCP automatically provides network configuration, such as:
- IP address
- Subnet mask
- Default gateway
- DNS server

### DHCP Process (DORA)

1. Discover
2. Offer
3. Request
4. Acknowledge

## 3. Practical Network Checks

```bash
ip -4 addr show eth0
ip route
ip link show eth0
ps aux | grep -E 'dhclient|dhcpcd|systemd-networkd' | grep -v grep
systemctl status systemd-networkd
```

## 4. Important Observations

- My WSL2 interface received IPv4 configuration.
- The default gateway was 172.20.64.1.
- The configured DNS resolver was 10.255.255.254.
- Domain resolution worked using getent.
- Ping to google.com succeeded.
- systemd-networkd was inactive, but internet connectivity still worked.

## 5. Key Learning

An inactive systemd-networkd service does not automatically mean that internet connectivity is broken.

DNS resolves domain names. DHCP provides network configuration.

## Environment

- OS: Ubuntu on WSL2
- Shell: Bash
- Repository: cloud-engineering-journey
