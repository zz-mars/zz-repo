assume cs:code
code segment
     mov ax,2000h
     mov ss,ax
     mov sp,0
     add sp,10h
     pop ax
     pop bx
     push ax
     push bx
     pop ax
     pop bx

     mov ax,4c00h
     int 21h
code ends
end
