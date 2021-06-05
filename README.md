# Fast Nmap Script

Does a full port TCP scan in roughly 5-10 minutes using just Nmap. Works really well through a VPN connection, unlike using Masscan then Nmap to conduct a full port scan.

## Installation

Download `fast_nmap_tcp.sh` somewhere. Done.

If you want to be able to run the script from anywhere make sure to include the path to the folder with the script into your PATH environment variable.

## Usage

```
fast_nmap_tcp.sh <ip address to scan> <output file for saving the results>
```
