assume cs:code,ds:data
data segment
     db 'Welcome to masm!$'
data ends
code segment
    start:mov ax,data
          mov ds,ax

          mov ah,2
          mov bh,0
          mov dh,5
          mov dl,12
          int 10h

          mov dx,0
          mov ah,9
          int 21h

          mov ax,4c00h
          int 21h
code ends
end start
