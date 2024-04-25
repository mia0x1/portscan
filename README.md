This is a simple TCP port scanner written in Bash.
Per default it uses the well-known port range (from 1 to 1023).

Users can specify their own port range by specifying the first and last port when calling the script.

## Usage

```
chmod +x ./portscan,sh
./portscan.sh $ip [first_port] [last_port]
```

You can use the script for troubleshooting purposes or learning in your own environment, for example to verify firewall changes.
Feel free to use this for yourself and add more useful functions.

Just some ideas:

1. Verfiy user input so that only valid IP addresses and port numbers can be used as input.
2. Add support for UDP
3. Check if the remote host is online