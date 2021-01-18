# Forensics  
## The Office Trouble I  

Here we were given a zip file and we need to crack the password of the zip file.  

So we will use **fcrackzip** to crack the password of zip file.    

By performing dictionary attack ```fcrackzip -v -u -D -p rockyou.txt av_b62152ea-cc85-43ab-8af1-f39915814327.zip```, We can get the password as ```perfectlypunk```.  

After opening the zip file with the password we will get a jpg in which the flag was written.   

**_flag_ = inctfj{dw1ght_1s_cr4zy_bu7_awes0me}**

