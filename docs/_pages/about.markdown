---
layout: single
title: About
permalink: /about/
---
Hi. I'm a Singaporean [CTF](https://www.youtube.com/watch?v=8ev9ZX9J45A) [player](https://ctftime.org/user/75701), with a focus on [pwnables](https://caprinux.github.io/lawofpwn/prologue/whatispwn). I play CTFs with a number of teams, including HCI's [Sieberrsec](https://irscybersec.tk/).

I'm currently conscripted; in the future I'll be studying as an undergrad @ [NUS CS](https://www.comp.nus.edu.sg/about/depts/cs/).

# Things you'll find here
This site serves as a showcase for some of my longer writings about pwn and security.

I try to keep every post here special and worth reading. To that end, I regularly upload shorter, less unique writeups to [this repository](https://github.com/IRS-Cybersec/ctfdump).

## I made this thing called [pwnscripts](https://github.com/152334H/pwnscripts) too, let me tell you about it
One fine day, I decided that [pwntools](https://github.com/Gallopsled/pwntools/) needed better `printf()` automation. I scratched out a [printf offset bruteforcer](https://github.com/152334H/pwnscripts/tree/428d22f36dede9cd442ee38c52bda87988e92a11) and pushed it online, with the full intent of packing it in pwntools as a pull request. [By the time](https://github.com/152334H/pwnscripts/tree/9de122f032324ac17b3ed8667c03b14c5d759b2f) I got my code up to shape, I'd developed a module with [external](https://github.com/niklasb/libc-database/pull/39) [dependencies](https://github.com/david942j/one_gadget) that were, in my opinion, unwise to bundle with pwntools proper.

The end result is what `pwnscripts` is today: a monkey-patched extension to pwntools, optimised for glibc ctf challenges.

