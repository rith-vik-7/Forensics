## Network Challenges  

### Beginner Challs  

#### http.pcap  

By exporting all objects off http from wireshark  
`File -> Export Objects -> HTTP` and then saving all files gives us some files.. one of the files contain login details and the flag  
flag: `picoCTF{n0ts3cur3_894a6546}`

#### dns.pcap  

By applying the filter `dns` we can sort out only dns packets..one of the packet has a text file which contains flag.  
flag: `picoCTF{w4lt3r_wh1t3_2d6d3c6c75aa3be7f42debed8ad16e3b}`  

### It's Complicated My Pal  

From *Protocol Hierarchy* we can observe that there are DNS, TLS, TCP, IGMP and ICMP packets.
![Protocol](https://github.com/rith-vik-7/Forensics/blob/main/Images/Capture1.PNG)
So after analysing all the layers, I found **PK** in `ICMP` layer, so looking into it deeply gave me a result like I need to filter the `IP` too else some extra unwanted packets will be remained. So `icmp && ip.src == 192.168.1.200 && ip.dst == 185.245.99.2` filter in wireshark gave me the required packets.

So, to extract those packets I used the following script  
```
from scapy.all import *
f = rdpcap('capture.pcap')
b=''
for x in f[ICMP]:
	if x[IP].src == '192.168.1.200' and x[IP].dst == '185.245.99.2':
		b+=str(x)[42:]
g = open("capture.zip", "wb")
g.write(b)
g.close()
```
This gave me a [zip](https://github.com/rith-vik-7/Forensics/blob/main/Images/capture.zip), which was protected with password. So I used `fcrackzip` to crack the password and got the image.  

![flag](https://github.com/rith-vik-7/Forensics/blob/main/Images/flag.jpg)  
flag: `shellmates{icmp_p@yl04d_4in't_us3l3ss_4ft3r_4ll_r1gHt?}`

### Biz44re  

### Orcish  

