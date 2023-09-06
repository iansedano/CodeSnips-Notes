```
nmap -sn 192.168.1.0/24
```

HOST DISCOVERY:
  -sn: Ping Scan - disable port scan

The /24 means nmap will scan 256 IP addresses from 192.168.1.0 to 192.168.1.255. 

Once you have one

```
ssh ubuntu@192.168.1.XXX
```

---

The `/24` notation is a subnet mask in CIDR (Classless Inter-Domain Routing) notation. It specifies the number of bits set to `1` in the subnet mask.

In IPv4, each IP address is 32 bits long. The subnet mask divides this address into two parts: the network portion and the host portion.

When you see `/24`, it means the first 24 bits are dedicated to the network portion of the address, and the remaining bits (32 - 24 = 8 bits) are for the host portion.

Now, how many addresses can 8 bits represent? 

2^8 = 256

So, 8 bits can represent 256 different addresses. This is why a `/24` subnet contains 256 addresses.

For example, in the subnet `192.168.1.0/24`:

- `192.168.1.0` is the network address.
- `192.168.1.1` to `192.168.1.254` are usable host addresses.
- `192.168.1.255` is the broadcast address for that subnet.

So, while you technically have 256 addresses in a `/24` subnet, one is reserved for the network address and another for the broadcast address, leaving 254 usable addresses for hosts.