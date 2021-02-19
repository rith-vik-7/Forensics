# Forensics - Set 2 
## E_challenge2

`We were given a jpg`  

Looking into its metadata..We will get `aW5jdGZ7M3gxZjcwMGxfMTVfbjFjZV8hX2d1M3NzX19fISEhIX0=`. Which after decoding freom `base64` gives us the flag.  

flag: `inctf{3x1f700l_15_n1ce_!_gu3ss___!!!!}`


## SH_challenge2

`We were given with a jpg.`

Looking into `strings`, We will get `RW5pbWkzc19haDNhZAo=`  

After decoding it from `base64`, We will get `Enimi3s_ah3ad`

Using this as passphrase in `steghide`  

```
$ steghide extract -sf SH_challenge2.jpg 
Enter passphrase: 
wrote extracted data to "flag.txt".
```
flag: `inctf{fr13ndly_f1re_is_s0met1m3s_d4ng3r0u5}`

## SS_challenge2  

Here, We were given a QR code in a png

We have `zbarimg` to scan QR codes.  

```
$ zbarimg SS_challenge2.png 
QR-Code:C_F(n1, n2) = 14 * [C(n1,n2) / 14] + 7 * FLAG(n1,n2) + (C(n1,n2) mod 7)
scanned 1 barcode symbols from 1 images in 0.04 seconds
```
We got some random function which was difficult to solve. So I went for Stegsolve to look into different planes.  

Finally, I got a new QR code in plane `RED 0`. 

![SS_challenge2](https://github.com/rith-vik-7/Forensics/blob/main/Images/ss.png)

I scanned this with `zbarimg`, and got the flag.  
`VolgaCTF{5t3g0_m4tr3shk4_in_4cti0n}`

## Z_challenge2

```Here, We were given with a png which has a QR code.```  

We have `zbarimg` to scan QR codes.  

```
$ zbarimg Z_challenge2.png 
QR-Code:flag{QR_code_scanned}
scanned 1 barcode symbols from 1 images in 0.03 seconds
```

flag : `flag{QR_code_scanned}`

## b_challenge2

We were given a `.docx` file and using `strings` we will get the flag.  

flag: `flag{h0wz_the_joke_hahahha!!}`

## s_challenge2

Got flag from `strings`

flag: `inctf{5tr1ng5_4r3_us3ful_1_gu3s5}`
