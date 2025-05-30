mov x2, 0x0cd0 // place address of pwn3
movk x2, 0x0040, lsl 16 // place address of pwn3 pt.2
mov x0, 0x28 // place number
mov x1, 0xB2B0 // lower four bits of first character
movk x1, 0xFFF0, lsl 16 // 2nd lowest 4 bits
movk x1, 0xFFFF, lsl 32 // 3rd lowest 4 bits
br x2
