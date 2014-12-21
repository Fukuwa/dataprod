---
title       : Developing Data Products
subtitle    : Using passwords
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## About passwords

A few notices:
Passwords are often too easy to guess.
Top 5 passwords according to Splashdata's analysis are:
<ol start="1">
  <li>123456</li>
  <li>password</li>
  <li>12345678</li>
  <li>qwerty</li>
  <li>abc123</li>
</ol>
... and the list goes on.

---

## Passwords

Passwords are often too short. As seen from the previous page, only 2 of 5 passwords met the recommended length of at least 8 characters. The remaining three passwords in top 5 list have length of 6.
<br/>
Brute-force method (worst case, requires much computation power) is sometimes used to calculate the passwords. But even with brute-force, common passwords are nearly instantly cracked (some in seconds, others in minutes).
The number of combinations is no match for todays computers.

---

## Combinations

![plot of chunk combinations](assets/fig/combinations.png) 

--- &radio
## Proper passwords

Minimum passwords (at least 8 characters long) mixed with lower case, upper case and digits takes about 15 hours to break. Of course, with improving technology times will shorten.
<br/>
However, good passwords do not protect against hackers (or even crackers) that have gained access to the system.

Which of following is a good password?

1. password78
2. thisOne
3. _G#d3C0d%e_
4. 1a2A3b4B

***.hint
A password must include different sets of characters
***.explanation
3rd passowrd is at least 8 characters long and includes small and upper case and special characters.
