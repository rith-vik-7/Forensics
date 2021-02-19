# Forensics  
## 10111001  

```
CHALLENGE DESCRIPTION
The most significant digit is not always left unnoticed...
```
[steg.png](https://vpframework.s3.amazonaws.com/files/challenge/av_573d13aa-bccd-441f-88f2-0a5fe94e524e.png)  

Here the name of the file is given as steg and was said about significant digit. So, the task can be solved using **ZSTEG** since it is **PNG**.  

```zsteg steg.png ``` gives us a flag which was not in format.  

Recieved flag:  
```NFXGG5DGNJ5TI3K7ORUDGX2MGNAVG5C7GVUUO3RRMYYWGNDOKRPWEVKUL4YV6YZUJZPXI4RQOVBEYM27LEYHKXZUL5WDAVD5```

By decoding the recieved flag in [base32](https://emn178.github.io/online-tools/base32_decode.html), We will get our flag:  
```inctfj{4m_th3_L3ASt_5iGn1f1c4nT_bUT_1_c4N_tr0uBL3_Y0u_4_l0T}```

## Always Has Been  

```
CHALLENGE DESCRIPTION
Look up in the BLUE sky ! It's a bird, it's a PLANE or wait .. It's both ? But how ?
```

[Always_Has_Been.png](https://vpframework.s3.amazonaws.com/files/challenge/av_4736ba30-a633-48fc-8f07-94c6f263e02c.png)  

Here, We need to look into the other planes of image to get the flag as the png looks to empty.  

After looking it into all planes, finally at the blue plan we an see an image..which is more clear at BLUE 7

flag:  
```inctfj{the3_fl4g_wa5_liter4lly_ins1de_4_m3m3}```


## Back to San Andreas  

```
CHALLENGE DESCRIPTION
hey did you know cJ waS parT of thE Grove street ?
```
[source](https://vpframework.s3.amazonaws.com/files/challenge/av_b7cfaf3c-883f-4818-8da2-0bcd8360fbb8.jpg)  

Here, in the question we can find that **JSTEG** was highlighted.  

After using this ```jsteg reveal gta.jpg gta.txt```, We will get a [link](https://ibb.co/3s8d1bv) in the file gta.txt.  

It will give us an image which contains the flag.
```inctfj{gr0ve_%treet_f0r_l1fe}```

## Con-The-Cat

```
CHALLENGE DESCRIPTION
This image seems to big for a normal png! What do you think can be hidden in this?
```
[Source](https://vpframework.s3.amazonaws.com/files/challenge/av_02bea4d4-1743-4eae-b503-ccd55a5c9b8f.png)  

If we check the png with pngcheck, we will get this error.  
```additional data after IEND chunk```  

It means that, the png has many files embedded in it. We can use binwalk to extract them.

After using ```binwalk a.png``` We will get this in the terminal:  

```

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 381 x 132, 8-bit colormap, non-interlaced
701           0x2BD           Zlib compressed data, default compression
7821          0x1E8D          JPEG image data, JFIF standard 1.01
22948         0x59A4          JPEG image data, JFIF standard 1.01
74478         0x122EE         JPEG image data, JFIF standard 1.01
89725         0x15E7D         JPEG image data, JFIF standard 1.01
```
It states that the png was embedded with 4 JPEG files and a Zlib. We can try getting the JPEG using  
``` dd if=a.png of=1.jpeg bs=1 skip=7821```  

We will get the flag in this JPEG.  
```inctfj{y0u_c4nt_s33_m3!!}```

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

## My First Stegnography  

```
CHALLENGE DESCRIPTION
We intercepted the transmission between russian spies, we got intel that they used something default to transmit message through images. Could you find it for us?  

```
The two files given are [BLUEPRINT.JPG](https://vpframework.s3.amazonaws.com/files/challenge/av_9f437f5f-aa31-4109-b07f-3650c4e31d1d.jpg) and [BLUEPRINTO.JPG](https://vpframework.s3.amazonaws.com/files/challenge/av_c02de02d-0f7c-4732-bf60-26acc37470f0.jpg)  

Here, from the challenge name we can find that the clue is *Stegnography*. So if we check the file with stegsolve we will get a phrase  
```steghide extract -sf 1.jpg ```  

We will get ```d4rk_s1d3``` as a result of the above action. Using this phrase if we again use stegsolve for the second jpg, we will get our flag  
```steghide extract -sf 1.jpg ```  

Here, we will use **d4rk_s1d3** as passphrase.  

Finally, We will get our flag written to a text file.  
```inctfj{w3_4r3_pl4nt1ng_4_b0mb}```

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

## The Office Trouble I  

```
CHALLENGE DESCRIPTION
Dwight has taken Jim's client folder and encrypted it ! Get those clients back !
```
[Source](https://beta.traboda.com/challenge/99)

Here we were given a zip file and we need to crack the password of the zip file.  

So we will use **fcrackzip** to crack the password of zip file.    

By performing dictionary attack ```fcrackzip -v -u -D -p rockyou.txt office_trouble.zip```, We can get the password as ```perfectlypunk```.  

After opening the zip file with the password we will get a jpg in which the flag was written.   

```flag = inctfj{dw1ght_1s_cr4zy_bu7_awes0me}```

## You can't see me  

```
CHALLENGE DESCRIPTION
We have received an image but seems like somebody has messed up with the data. Can you help us?
```
[IMAGE.PNG](https://vpframework.s3.amazonaws.com/files/challenge/av_b1259c35-100d-40a6-a049-6ee86200d234.png)  

Here, the png data was messed up. So, we can check this by **pngcheck** and correct the corresponding error with **ghex**.  

Firstly, If we look into the hex data, We can observe that magic numbers are not coorect. 

Then, We can correct the magic numbers and the first chunk from *IDHR* to *IHDR*.

Now, pngcheck shows an error with reserved-bit-set chunk *gama*. We need to correct it to *gAMA*.  

Now, pngcheck shows an error with reserved-bit-set chunk *idat*. We need to correct it to *IDAT*.  

Now, pngcheck shows an error with reserved-bit-set chunk *INED*. We need to correct it to *IEND*.  

Finaly pngcheck shows ```OK: 1.png (269x200, 24-bit RGB, non-interlaced, 72.8%).```  

Now, we will get our flag in the png.  
```inctfj{WH4t_ar3_pNgCHUnks?}```
