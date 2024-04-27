[org 0x0100]
jmp start
; coordinates of a circle of radius 24
x24: dw 48,47,44,40,36,30,24,17,12,7,3,0,0,0,3,7,11,17,23,30,36,40,44,47,48
y24: dw 24,30,36,40,44,47,48,47,44,40,36,30,24,17,11,7,3,0,0,0,3,7,11,17,23
; coordinates of a circle of radius 45
x45: dw 90,89,88,86,83,79,75,70,64,58,52,46,40,34,28,22,17,12,8,5,2,0,0,0,0,2,5,8,12,17,22,28,34,40,46,52,58,64,70,75,79,83,86,88,89,90
y45: dw 45,51,57,63,68,73,78,82,85,87,89,89,89,88,86,83,80,76,71,66,60,54,48,41,35,29,23,18,13,9,6,3,1,0,0,0,2,4,7,11,16,21,26,32,38,44
; coordinates of a circle of radius 72
x72: dw 144,143,142,141,139,137,134,130,127,122,118,113,108,102,96,90,84,78,72,65,59,53,47,41,36,30,25,21,16,13,9,6,4,2,1,0,0,0,1,2,4,6,9,13,16,21,25,30,35,41,47,53,59,65,71,78,84,90,96,102,108,113,118,122,127,130,134,137,139,141,142,143,144
y72: dw 72,78,84,90,96,102,108,113,118,122,127,130,134,137,139,141,142,143,144,143,142,141,139,137,134,130,127,122,118,113,108,102,96,90,84,78,72,65,59,53,47,41,35,30,25,21,16,13,9,6,4,2,1,0,0,0,1,2,4,6,9,13,16,21,25,30,35,41,47,53,59,65,71
; coordinates of a circle of radius 120
x120: dw 240,239,239,238,237,235,234,232,229,226,223,220,217,213,209,204,200,195,190,185,180,174,168,163,157,151,144,138,132,126,120,113,107,101,95,88,82,76,71,65,60,54,49,44,39,35,30,26,22,19,16,13,10,7,5,4,2,1,0,0,0,0,0,1,2,4,5,7,10,13,16,19,22,26,30,35,39,44,49,54,59,65,71,76,82,88,95,101,107,113,119,126,132,138,144,151,157,163,168,174,180,185,190,195,200,204,209,213,217,220,223,226,229,232,234,235,237,238,239,239,240
y120: dw 120,126,132,138,144,151,157,163,168,174,180,185,190,195,200,204,209,213,217,220,223,226,229,232,234,235,237,238,239,239,240,239,239,238,237,235,234,232,229,226,223,220,217,213,209,204,200,195,190,185,180,174,168,163,157,151,144,138,132,126,120,113,107,101,95,88,82,76,71,65,59,54,49,44,39,35,30,26,22,19,16,13,10,7,5,4,2,1,0,0,0,0,0,1,2,4,5,7,10,13,16,19,22,26,30,35,39,44,49,54,59,65,71,76,82,88,95,101,107,113,119
; setting up the parameters
counter : db 0;
radius : equ 24 ; choose radius (24, 45, 72, 120)
xoffset: equ 75 ; change to move circle along x axis
yoffset: equ 100 ; change to move circle along y axis

radius1: equ 24
xoffset1: equ 100 ; change to move circle along x axis
yoffset1: equ 75 ; change to move circle along y axis

radius2: equ 24
xoffset2: equ 125 ; change to move circle along x axis
yoffset2: equ 100 ; change to move circle along y axis

radius3: equ 24
xoffset3: equ 440 ; change to move circle along x axis
yoffset3: equ 15 ; change to move circle along y axis

radius4 : equ 45 ; choose radius (24, 45, 72, 120)
xoffset4: equ  20; change to move circle along x axis
yoffset4: equ 230 ; change to move circle along y axis


w equ 640 ; width offset
x equ 0 ; starting x coordinate of line
y equ 175 ; starting y coordinate of line
c equ 63 ; color


w1 equ 640 ; width offset
x1 equ 0 ; starting x coordinate of line
y1 equ 349 ; starting y coordinate of line

w2 equ 174 ; width offset
x2 equ 0 ; starting x coordinate of line
y2 equ 175 ; starting y coordinate of line

w3 equ 174 ; width offset
x3 equ 639 ; starting x coordinate of line
y3 equ 175 ; starting y coordinate of line

w4 equ 10 ; width offset
x4 equ 280 ; starting x coordinate of line
y4 equ 175 ; starting y coordinate of line

w5 equ 175 ; width offset
x5 equ 330 ; starting x coordinate of line
y5 equ 175 ; starting y coordinate of line

w6 equ 150 ; width offset
x6 equ 230 ; starting x coordinate of line
y6 equ 175 ; starting y coordinate of line
c1 equ 60 ; color

x7 equ 230 ; starting x coordinate of line
y7 equ 120 ; starting y coordinate of line
w7 equ 55 ; width offset

w8 equ 150 ; width offset
x8 equ 230 ; starting x coordinate of line
y8 equ 120 ; starting y coordinate of line

w9 equ 55 ; width offset
x9 equ 380 ; starting x coordinate of line
y9 equ 120 ; starting y coordinate of line

x10 equ 240 ; starting x coordinate of line
y10 equ 135 ; starting y coordinate of line
w10 equ 20 ; width offset
c2 equ 59 ; color

x11 equ 240 ; starting x coordinate of line
y11 equ 135 ; starting y coordinate of line
w11 equ 30 ; width offset

x12 equ 270 ; starting x coordinate of line
y12 equ 155

x13 equ 340 ; starting x coordinate of line
x14 equ 370 ; starting x coordinate of line

;**********************************
ww9 equ 30 ; width offset
xx9 equ 298 ; starting x coordinate of line
yy9 equ 145 ; starting y coordinate of line

ww10 equ 30 ; width offset
xx10 equ 315 ; starting x coordinate of line
yy10 equ 145 ; starting y coordinate of line

ww11 equ 16 ; width offset
xx11 equ 298 ; starting x coordinate of line
yy11 equ 145 ; starting y coordinate of line

;**************************************
ww12 equ 70 ; width offset
xx12 equ 508 ; starting x coordinate of line
yy12 equ 160 ; starting y coordinate of line

ww13 equ 70 ; width offset
xx13 equ 525 ; starting x coordinate of line
yy13 equ 160 ; starting y coordinate of line

ww14 equ 16 ; width offset
xx14 equ 508 ; starting x coordinate of line
yy14 equ 160 ; starting y coordinate of line

ww15 equ 16 ; width offset
xx15 equ 508 ; starting x coordinate of line
yy15 equ 230 ; starting y coordinate of line

;****************************************
ww16 equ 70 ; width offset
xx16 equ 118 ; starting x coordinate of line
yy16 equ 140 ; starting y coordinate of line

ww17 equ 70 ; width offset
xx17 equ 137 ; starting x coordinate of line
yy17 equ 140 ; starting y coordinate of line

ww18 equ 18 ; width offset
xx18 equ 118 ; starting x coordinate of line
yy18 equ 140 ; starting y coordinate of line

ww19 equ 18 ; width offset
xx19 equ 118 ; starting x coordinate of line
yy19 equ 210 ; starting y coordinate of line

;****************************************
rw6 equ 170 ; width offset
rx6 equ 220 ; starting x coordinate of line
ry6 equ 118 ; starting y coordinate of line
c3 equ 60 ; color

rw equ 170 ; width offset
rw7 equ 85 ; width offset
rx7 equ 220 ; starting x coordinate of line
ry7 equ 118 ; starting y coordinate of line
rx8 equ 390 ; starting x coordinate of line
ry8 equ 118 ; starting y coordinate of line
rw8 equ 85 ; width offset

;*****************************************
twl equ 70 
txl equ 482 ; starting x coordinate of line
tyl equ 163 ; starting y coordinate of line
txll equ 482 ; starting x coordinate of line
tyll equ 148 ; starting y coordinate of line

twb equ 35 ; width offset
txb equ 482 ; starting x coordinate of line
tyb equ 163 ; starting y coordinate of line

txb1 equ 552 ; starting x coordinate of line
tyb1 equ 148 ; starting y coordinate of line


start:
mov ax, 0 ; service 0 – get keystroke
 int 0x16 ; bios keyboard services 
 mov ax, 0x0003 ; 80x25 text mode  
;************** circle 1 ********************
mov si, x24 ; change x array as radius
mov di, y24 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
int 0x10 ; bios video services
mov ax, 0x0C3F ; put pixel in white color
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset ; moving point along y axis
l1:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset
mov dx, [di]
add dx, yoffset
inc byte[counter]
cmp byte[counter], radius ; stopping condition
jle l1 ; jump if less
 mov ax, 0x0003 ; 80x25 text mode  

;************** circle 2 ********************
mov word [counter],0

mov si, x24 ; change x array as radius
mov di, y24 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode

mov ax, 0x0C3F ; put pixel in white color
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset1 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset1 ; moving point along y axis
l2:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset1
mov dx, [di]
add dx, yoffset1
inc byte[counter]
cmp byte[counter], radius1 ; stopping condition
jle l2 ; jump if less
 mov ax, 0x0003 ; 80x25 text mode  ; bios
;video services

;************** circle 3 ********************
mov word [counter],0

mov si, x24 ; change x array as radius
mov di, y24 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode

mov ax, 0x0C3F ; put pixel in white color
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset2 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset2 ; moving point along y axis
l3:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset2
mov dx, [di]
add dx, yoffset2
inc byte[counter]
cmp byte[counter], radius2 ; stopping condition
jle l3 ; jump if less

 mov ax, 0x0003 ; 80x25 text mode  ; bios
;video services

;************** circle 4 ********************
mov word [counter],0

mov si, x24 ; change x array as radius
mov di, y24 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode

mov ax, 0x0C3C ; put pixel in white color
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset3 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset3 ; moving point along y axis
l4:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset3
mov dx, [di]
add dx, yoffset3
inc byte[counter]
cmp byte[counter], radius3 ; stopping condition
jle l4 ; jump if less
 mov ax, 0x0003 ; 80x25 text mode  ; bios
;video services

;************** circle 5 ********************
mov word [counter],0

mov si, x45 ; change x array as radius
mov di, y45 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode

mov ax, 0x0C3F ; put pixel in white color
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset4 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset4 ; moving point along y axis
l5:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset4
mov dx, [di]
add dx, yoffset4
inc byte[counter]
cmp byte[counter], radius4 ; stopping condition
jle l5 ; jump if less
 mov ax, 0x0003 ; 80x25 text mode  ; bios
;video services

;************** draw horizontal middle line ************
mov ah, 0
mov al, 13h
mov cx, x
mov dx, y
mov al, c
u1:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x+w
jbe u1


;************** draw horizontal last line ************
mov ah, 0
mov al, 13h
mov cx, x1
mov dx, y1
mov al, c
u2:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x+w1
jbe u2

;************** draw left verticle line ************
mov ah, 0
mov al, 13h
mov cx, x2
mov dx, y2
mov al, c
u3:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y2+w2
jbe u3

;************** draw right verticle line ************
mov ah, 0
mov al, 13h
mov cx, x3
mov dx, y3
mov al, c
u4:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y3+w3
jbe u4
;************** draw left road line ************
mov ah, 0
mov al, 13h
mov cx, x4
mov dx, y4
mov al, c
u5: add dx,2
mov ah, 0ch ; put pixel
int 10h
dec cx
cmp cx, x4+w4
jbe u5

;************** draw right road line ************
mov ah, 0
mov al, 13h
mov cx, x5
mov dx, y5
mov al, c
u6: add dx,2
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp dx, y5+w5
jbe u6

;************** draw rectangle ************

mov ah, 0
mov al, 13h
mov cx, x6
mov dx,y6
mov al, c
u7:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x6+w6
jbe u7

mov ah, 0
mov al, 13h
mov cx, x7
mov dx,y7
mov al, c
u8:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y7+w7
jbe u8

mov ah, 0
mov al, 13h
mov cx, x8
mov dx,y8
mov al, c
u9:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x8+w8
jbe u9

mov ah, 0
mov al, 13h
mov cx, x9
mov dx,y9
mov al, c
u10:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y9+w9
jbe u10

;************** draw left window ************

mov ah, 0
mov al, 13h
mov cx, x10
mov dx,y10
mov al, c2
v1:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y10+w10
jbe v1

mov ah, 0
mov al, 13h
mov cx, x11
mov dx,y11
mov al, c2
v2:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x11+w11
jbe v2

mov ah, 0
mov al, 13h
mov cx, x12
mov dx,y10
mov al, c2
v3:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y10+w10
jbe v3

mov ah, 0
mov al, 13h
mov cx, x11
mov dx,y12
mov al, c2
v4:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x11+w11
jbe v4

;************** draw right window ************

mov ah, 0
mov al, 13h
mov cx, x13
mov dx,y10
mov al, c2
v5:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y10+w10
jbe v5

mov ah, 0
mov al, 13h
mov cx, x13
mov dx,y10
mov al, c2
v6:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x13+w11
jbe v6


mov ah, 0
mov al, 13h
mov cx, x14
mov dx,y10
mov al, c2
v7:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, y10+w10
jbe v7

mov ah, 0
mov al, 13h
mov cx, x13
mov dx,y12
mov al, c2
v8:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, x13+w11
jbe v8

;******************* draw door ***************
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx9
mov dx, yy9
mov al, c
v10:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy9+ww9
jbe v10

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx10
mov dx, yy10
mov al, c
v11:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy10+ww10
jbe v11

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx11
mov dx, yy11
mov al, c
v12:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, xx11+ww11
jbe v12

;****************draw right tree************
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx12
mov dx, yy12
mov al, c
v13
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy12+ww12
jbe v13

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx13
mov dx, yy13
mov al, c
v14:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy13+ww13
jbe v14

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx14
mov dx, yy14
mov al, c
v15:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, xx14+ww14
jbe v15


mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx15
mov dx, yy15
mov al, c
v16:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, xx15+ww15
jbe v16


;****************draw left tree************
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx16
mov dx, yy16
mov al, c
v17
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy16+ww16
jbe v17

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx17
mov dx, yy17
mov al, c
v18:
mov ah, 0ch ; put pixel
int 10h
inc dx
cmp dx, yy17+ww17
jbe v18

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx18
mov dx, yy18
mov al, c
v19:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, xx18+ww18
jbe v19


mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, xx19
mov dx, yy19
mov al, c
v20:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, xx19+ww19
jbe v20

;************* draw roof ***************
mov ah, 0
mov al, 13h
mov cx, rx6
mov dx,ry6
mov al, c3
r1:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, rx6+rw6
jbe r1

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, rx7
mov dx, ry7
mov al, c3
r2:
mov ah, 0ch ; put pixel
int 10h
add cx, 3
dec dx
cmp cx, rx7+rw7
jbe r2

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, rx8
mov dx, ry8
mov al, c3
r3:
mov ah, 0ch ; put pixel
int 10h
dec dx
sub cx, 3
cmp cx, rx8-rw8
jae r3


;************* draw tree triangle **************
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txl
mov dx, tyl
mov al, c
t1:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, txl+twl
jbe t1

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txll
mov dx, tyll
mov al, c
t2:
mov ah, 0ch ; put pixel
int 10h
inc cx
cmp cx, txll+twl
jbe t2

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txb
mov dx, tyb
mov al, c
t3:
mov ah, 0ch ; put pixel
int 10h
inc cx
sub dx, 2
cmp cx, txb+twb
jbe t3
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txb1
mov dx, tyb
mov al, c
t4:
mov ah, 0ch ; put pixel
int 10h
dec cx
sub dx, 2
cmp cx, txb1-twb
jae t4

mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txb
mov dx, tyb1
mov al, c
t5:
mov ah, 0ch ; put pixel
int 10h
inc cx
sub dx, 2
cmp cx, txb+twb
jbe t5
mov ah, 0
mov al, 13h
; draw diagonal 11:
mov cx, txb1
mov dx, tyb1
mov al, c
t6:
mov ah, 0ch ; put pixel
int 10h
dec cx
sub dx, 2
cmp cx, txb1-twb
jae t6

mov ax, 0 ; service 0 – get keystroke
 int 0x16 ; bios keyboard services 

mov ax, 0x4c00 ; terminate program 
int 0x21