# Forenscis  
## Detailed View  

```
CHALLENGE DESCRIPTION
Sam, thinks there is more to know about this file. Can you help him know more about this file?

Flag format: flag{some_l33t_string}
```
[source](https://vpframework.s3.amazonaws.com/files/challenge/av_ebfdf621-8524-434b-bc9c-188161d4e2aa.png)  

If we check for metadata of the png we will get a [link](https://pastebin.com/KudUCfTC) in comment.  

We will get a random string in the above link. ```ZmxhZ3tNMTVzSTBOX2FDYzBNUEwxNWgzRH0=```

By decoding the string using [base64 decoder](https://www.base64decode.org/), We will get our flag.  
```flag{M15sI0N_aCc0MPL15h3D}```
