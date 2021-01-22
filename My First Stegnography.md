# Forensics  
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
