# Forensics  
## Security 101  

```
CHALLENGE DESCRIPTION
Nerd : Some people keep their username as password. Why would they do that ? Me : Hmm ...
```
We will get a zip file. After deflating the zip file, we will get a jpg and another zip file which is password protected.  

Here in the question, the clue was that username is the password. Username may not be mine...So, I need to get the username of author. What if I check the metadata of jpg..  

Yes, I got the author name as ```R3DDIT_US3R```  

Using this password, I opened the zip and got a jpg which has the flag.  
```inctfj{1ts_4ll_f1ne_tru5t_m3}```
