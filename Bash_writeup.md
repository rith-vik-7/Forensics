# Forensics Set - 2  
## Reverse  

```
Reverse and Find the flag.
Flag format is inctf{}
```

We need to reverse the contents of the file and then get the flag.  

```
file=open("revers.me","r")
a=file.readlines()

fileo=open("a.txt","w+")
for i in a:
    fileo.write(i[::-1])

file.close()
fileo.close()
```

This python program will reverse us the file.  

Using `strings` + `grep` on the output file `a.txt` will give us the flag.  
![1](https://github.com/rith-vik-7/Forensics/blob/main/Images/reverse.png)

flag: `inctf{Y0u_ar3_g00d_4t_rev3rs1ng_1_gu3ss}`

## Stringer-Things 

```
Obviously, this is not the flag, but I can give you the flag format.

inctf{s0m3_l33t_str1ng}

PS: "inctf" in the flag is also case insensitive. Find three flags in the file.
```

We can get 2 flags from `strings` + `grep`

```
$ strings find-flags-in-me | grep -i 'inctf'
inctf{y4yy!!!_found_th3_fir5t_fl4g}
InCtF{G00d_jobb!!This_is_the_2nd_on3}.
```

We can get the other flag from `xxd`

Looking into `xxd`, We will find this 
![xxd](https://github.com/rith-vik-7/Forensics/blob/main/Images/strangerthings.png)

combining all the letters of the flag by removing '.' between them gives us the flag.  
flag: `inctf{th1s_1s_th3_l4st_0ne}`

## Twins  

```
I Hope These files are as same as twins. But find it yourself.
```

We got two files which are claimed to be almost same. If we find the differnce between these two files.  

`vimdiff` + `xxd` can do this.  

[vimdiff](https://www.tutorialspoint.com/vim/vim_diff.htm) is a part of vim, that show differences between files.  

![1](https://github.com/rith-vik-7/Forensics/blob/main/Images/twin1.png)  

![2](https://github.com/rith-vik-7/Forensics/blob/main/Images/twin2.png)  

![3](https://github.com/rith-vik-7/Forensics/blob/main/Images/twin3.png)  

![4](https://github.com/rith-vik-7/Forensics/blob/main/Images/twin4.png)  

![5](https://github.com/rith-vik-7/Forensics/blob/main/Images/twin5.png)  

combining all the letters where there is a difference gives us the flag.  
flag: `inctf{y0u_Gotm3}`
