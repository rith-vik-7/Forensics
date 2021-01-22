# Forensics  
## The Office Trouble I  

Here we were given a zip file and we need to crack the password of the zip file.  

So we will use **fcrackzip** to crack the password of zip file.    

By performing dictionary attack ```fcrackzip -v -u -D -p rockyou.txt office_trouble.zip```, We can get the password as ```perfectlypunk```.  

After opening the zip file with the password we will get a jpg in which the flag was written.   

```flag = inctfj{dw1ght_1s_cr4zy_bu7_awes0me}```

