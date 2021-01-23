# Forensics  
## Jay-chot  
```
CHALLENGE DESCRIPTION
Raju sent me this file and told me that it's an important file for him, but he couldn't open it. Can you help me in retrieving this file?

Flag Format: flag{some_l33t_string}
```
[source](https://vpframework.s3.amazonaws.com/files/challenge/av_3c611ac3-974a-4ef1-9927-7d8eda4cb7f7.jpg)  

Here, We were given a jpg whose magic numbers are not correct. This an be found by examining this with pngcheck, it shows 
```this is neither a PNG or JNG image nor a MNG stream```, which means that the file format is not identified.  

After correct the hex values, We will get our flag.  
```flag{a4aa04741a8d3a952a7ec88457991b97}```
