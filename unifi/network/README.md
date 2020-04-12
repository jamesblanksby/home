# Network

LAN, VLAN and WAN network configuration.

## Setup

| name    | subnet         | vlan | igmp |
|---------|----------------|:----:|:----:|
| lan     | 192.168.0.0/24 |      |      |
| server  | 10.10.0.0/24   |  10  |      |
| iot     | 10.20.0.0/24   |  20  |   ✓  |
| protect | 10.30.0.0/24   |  30  |      |
| user    | 10.40.0.0/24   |  40  |   ✓  |
| guest   | 10.50.0.0/24   |  50  |      |
| vpn     | 10.60.0.0/24   |  60  |      |
| wan     | pppoe          |      |      |

### WAN Connection

Username: `broadbanduser@btbroadband.com`
Password: `bt`

### Further reading

*None*
