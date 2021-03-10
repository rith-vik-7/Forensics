### Beginner Challs  

#### http.pcap  

By exporting all objects off http from wireshark  
`File -> Export Objects -> HTTP` and then saving all files gives us some files.. one of the files contain login details and the flag  
flag: `picoCTF{n0ts3cur3_894a6546}`

#### dns.pcap  

By applying the filter `dns` we can sort out only dns packets..one of the packet has a text file which contains flag.  
flag: `picoCTF{w4lt3r_wh1t3_2d6d3c6c75aa3be7f42debed8ad16e3b}`
