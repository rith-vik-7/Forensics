# Forensics  
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
