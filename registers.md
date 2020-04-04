# Registers

## General-Purpose Registers

### Original (as 64 bit)

- rax
- rbx
- rcx
- rdx

### Extended (as 64 bit)

- r8
- r9
- r10
- r11
- r12
- r13
- r14
- r15

## Special Registers

- rbp - register base pointer (start of stack)
- rsp - register stack pointer (current location in stack, growing downwards)
- rsi - register source index (source for data copies)
- rdi - register destination index (destination for data copies)

## Syscall and Function Call

- rdi: First parameter
- rsi: Second parameter
- rdx: Third parameter
- rcx: Thourth parameter
- r8d: Fifth parameter <!-- TODO: Why is a "d" suffix here? -->
- r9d: Sixth parameter <!-- TODO: Why is a "d" suffix here? -->
(others on the stack)

- rax: Syscall number, return value

- Preserved:
  - rsp
  - rbp
  - rbx
  - r12
  - r13
  - r14
  - r15

- Trampled:
  - rax
  - rcx
  - rdx
  - rdi
  - rsi
  - r8
  - r9
  - r10
  - r11

## Pre- and Suffix

Original register names are split into three parts:
Prefix, identifier and suffix
For "rax" this is "r", "a" and "x".

Extended register identifier are split into two parts:
Identifier and suffix
For "r15" this is "r15" and "".

- 64 bit
  - Original
    - Prefix: r
    - Suffix: x
- 32 bit
  - Original
    - Prefix: e
    - Suffix: x
  - Extended
    - Suffix: d
- 16 bit
  - Extended
    - Suffix: w
- 8 bit ("high byte")
  - Original
    - Suffix: h
- 8 bit ("low byte")
  - Original
    - Suffix: l
  - Extended
    - Suffix: b

## Register overview table

64 bit register | Lower 32 bits | Lower 16 bits | Lower 8 bits
 ----| ---- | ---- | ----
rax  | eax  | ax   | al
rbx  | ebx  | bx   | bl
rcx  | ecx  | cx   | cl
rdx  | edx  | dx   | dl
rsi  | esi  | si   | sil
rdi  | edi  | di   | dil
rbp  | ebp  | bp   | bpl
rsp  | esp  | sp   | spl
r8   | r8d  | r8w  | r8b
r9   | r9d  | r9w  | r9b
r10  | r10d | r10w | r10b
r11  | r11d | r11w | r11b
r12  | r12d | r12w | r12b
r13  | r13d | r13w | r13b
r15  | r14d | r14w | r14b
r15  | r15d | r15w | r15b
