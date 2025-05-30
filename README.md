# Program Exploitation
This project uses multiple exploits to hack a program.
All exploits were done by dumping and analyzing the program binaries.

## Overview
Exploits used include:
- **Stack smashing** to overwrite return addresses  
- **Shellcode injection** to invoke functions  
- **Return-Oriented Programming (ROP)** to make function calls without injecting code  

## Directory Structure 
- `task2/` – Return address overwrite to call `pwn1()` and create a new file called pwn3d
- `task3/` – Stack shellcode injection to call `pwn2(30)` and creates a new file called pwn3d-030 (works with other numbers too)
- `task4/` – Injection + string argument to call `pwn3(40, "l33th4x0r")` and creates a new file called pwn3d-040 with contents "l33th4x0r"
- `task5/` – ROP exploit to call `pwn2(50)` - same as task3 but using ROP
- `task6/` – ROP with string+int to call `pwn3(60, "ph33rm3n00bz")` - same as task4 but using ROP
- `rpn/` – Vulnerable reverse Polish notation calculator binary  

## Notes

- To test out each exploit, run the following and replace `{x}` with the appropriate task number
```
xxd -r -p task{x}.hex > task{x}.bin
setarch -R rpn task{x}.bin
```
- Function targets (`pwn1`, `pwn2`, `pwn3`) were reverse-engineered and exploited with crafted inputs 
- An example output file has been left in the directory from task 6
