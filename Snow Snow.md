# Forensics  
## Snow Snow  

```
CHALLENGE DESCRIPTION
Ravi thinks there is something suspicious between these lines of this file. Can you help him find out what is suspicious?

Flag Format: flag{some_l33t_string}
```

[Source](https://vpframework.s3.amazonaws.com/files/challenge/av_a0b05a70-7bc0-419e-bc50-147852117b9c.txt)  

As the task name is snow and the given file is .txt, we need to look for Whitespace Steganography.. Hence stegsnow.

```stegsnow -C a.txt``` will give us a flag ```ntio{eP1B35x4K3_aB3O0_q5_K00t}```, which was not in flag format...so we need to decode it  

If we go with bruteforce [here](https://www.dcode.fr/caesar-cipher), We will get our flag.  
```flag{wH1T35p4C3_sT3G0_i5_C00l}```
