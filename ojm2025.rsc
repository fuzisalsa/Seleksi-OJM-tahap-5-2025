# jan/02/1970 00:03:17 by RouterOS 6.49.13
# software id = YECA-E61K
#
# model = 951Ui-2HnD
# serial number = 80F107FB4971
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.88.2
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether2 name=dhcp1
/ip address
add address=192.168.88.1/30 interface=ether2 network=192.168.88.0
/ip dhcp-client
add add-default-route=no disabled=no interface=ether1 use-peer-dns=no \
    use-peer-ntp=no
/ip dhcp-server network
add address=192.168.88.0/30 gateway=192.168.88.1
