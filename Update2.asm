INCLUDE Irvine32.inc

.DATA

startscreen   BYTE '  ',0ah,0dh
BYTE ' ',0ah,0dh
BYTE '                   2048 GAME                   ',0ah,0dh 
BYTE '               Press Enter to Start                    ',0ah,0dh, 0

board  BYTE '  ',0ah,0dh
BYTE ' ',0ah,0dh
BYTE ' ---------------------------------------------',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' ---------------------------------------------',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' ---------------------------------------------',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' ---------------------------------------------',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE ' |          |           |          |          |',0ah,0dh
BYTE " ---------------------------------------------",0ah,0dh
BYTE '           ',0ah,0dh
BYTE "                      CREDITS :  ",0ah,0dh
BYTE "                                Talal Ahmed, Muhamad Maaz  :')  ",0ah,0dh,0


winstring BYTE ' ', 0ah, 0dh
BYTE ' ',0ah,0dh
BYTE ' +============================================+', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||    __  __     ______     __  __          ||', 0ah, 0dh
BYTE ' ||   /\ \_\ \   /\  __ \   /\ \/\ \         ||', 0ah, 0dh
BYTE ' ||   \ \____ \  \ \ \/\ \  \ \ \_\ \        ||', 0ah, 0dh
BYTE ' ||    \/\_____\  \ \_____\  \ \_____\       ||', 0ah, 0dh
BYTE ' ||     \/_____/   \/_____/   \/_____/       ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||        __     __     __     __   __      ||', 0ah, 0dh
BYTE ' ||       /\ \  _ \ \   /\ \   /\ "-.\ \     ||', 0ah, 0dh
BYTE ' ||       \ \ \/ ".\ \  \ \ \  \ \ \-.  \    ||', 0ah, 0dh
BYTE ' ||        \ \__/".~\_\  \ \_\  \ \_\\"\_\   ||', 0ah, 0dh
BYTE ' ||         \/_/   \/_/   \/_/   \/_/ \/_/   ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' +============================================+', 0ah, 0dh, 0

gameoverstring BYTE ' ', 0ah, 0dh
BYTE ' ',0ah,0dh
BYTE ' +============================================+', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' || ______    ______    __    __    ______   ||', 0ah, 0dh
BYTE ' ||/\  ___\  /\  __ \  /\ "-./  \  /\  ___\  ||', 0ah, 0dh
BYTE ' ||\ \ \__ \ \ \  __ \ \ \ \-./\ \ \ \  __\  ||', 0ah, 0dh
BYTE ' || \ \_____\ \ \_\ \_\ \ \_\ \ \_\ \ \_____\||', 0ah, 0dh
BYTE ' ||  \/_____/  \/_/\/_/  \/_/  \/_/  \/_____/||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||  ______    __   __  ______    ______     ||', 0ah, 0dh
BYTE ' || /\  __ \  /\ \ / / /\  ___\  /\  == \    ||', 0ah, 0dh
BYTE ' || \ \ \/\ \ \ \ \ /  \ \  __\  \ \  __<    ||', 0ah, 0dh
BYTE ' ||  \ \_____\ \ \__|   \ \_____\ \ \_\ \_\  ||', 0ah, 0dh
BYTE ' ||   \/_____/  \/_/     \/_____/  \/_/ /_/  ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' ||                                          ||', 0ah, 0dh
BYTE ' +============================================+', 0ah, 0dh, 0


Z BYTE ? , 0 
score BYTE "Score:  ",0

;block  BYTE "     ", 0
block2 BYTE "       ", 0

; output display blocks representing 
; real num values
data2    BYTE "   2   ", 0
data4    BYTE "   4   ", 0
data8    BYTE "   8   ", 0
data16   BYTE "  16   ", 0
data32   BYTE "  32   ", 0
data64   BYTE "  64   ", 0
data128  BYTE "  128  ", 0
data256  BYTE "  256  ", 0
data512  BYTE "  512  ", 0
data1024 BYTE " 1024  ", 0
data2048 BYTE " 2048  ", 0


x_axis BYTE 4 DUP(2), 4 DUP(9), 4 DUP(16), 4 DUP(23)
y_axis BYTE 4 DUP(4,15,26,37)

state BYTE 16 DUP(0) ; ambiguity  :'( ;


.CODE
main PROC

	mov eax, white + 12*16
	call selectColor
	;generating random number
    ;CALL Randomize
    CALL Clrscr 
	
    MOV EDX, OFFSET startscreen
    CALL WriteString

    CALL ReadChar

    MOV eax, 0
    MOV EDX, 0
    CALL Clrscr

	mov ecx,3
	generateThrice:
	Call genRandom
	loop generateThrice

	call displayFunction

	gameProcess:
	; abayy salayy ye kia chuss hai xD
	    mov edx, offset score
		call writestring

     	inc z
		mov edx, offset z
		call writeDec
		call crlf
		 

		mov ebx, 0
		CALL Readchar

	   .if (ah == 48h)
			JE  moveUp
		.elseif ( ah == 50h)
			JE moveDown
		.elseif( ah == 4Bh)
			JE moveLeft
		.elseif(ah == 4Dh)
			JE moveRight
		.endif
		
		; jump output labels given below
		moveUp :
			call arrowUp
			jmp L2continue
		moveDown :
			call arrowDown
			jmp L2continue
		moveLeft :
			call arrowLeft
			jmp L2continue
		moveRight :
			call arrowRight
			jmp L2continue
		
		L2continue :
		;call look

		call VICTORY
		call LOSS

	JMP gameProcess
	EXIT

main ENDP

VICTORY PROC USES EAX ECX EDX ESI 
	mov eax, 0
	mov ecx, lengthof state
	mov esi, offset state
	victoryLabel:
		mov al, [esi]
		.if (al == 11)
			JE victoryConfirmLabel
		.endif
		inc si
	loop victoryLabel
	RET


	victoryConfirmLabel:
	mov eax, 1000
	call delay
	call clrscr
	mov edx, offset winstring
	call writestring
	EXIT
VICTORY ENDP
	
LOSS PROC USES EAX EBX ECX EDX ESI
	mov esi, offset state
	mov ecx, lengthof state
	countzero:
		mov al, [esi]
		.if(al == 0)
			JZ endLoss
		.endif
		inc esi
	loop countzero

	mov ecx, 4
	mov esi, offset state
	coloumnCheck:
		mov ah, [esi]
		mov al, [esi+4]
		mov bh, [esi+8]
		mov bl, [esi+12]
		.if(ah == al)
			JE endLoss
		.elseif(al == bh)
			JE endLoss
		.elseif (bh == bl)
			JE endLoss
		.endif
		inc si
	loop coloumnCheck

	mov ecx, 4
	mov esi, offset state
	rowCheck:
		mov ah, [esi]
		mov al, [esi+1]
		mov bh, [esi+2]
		mov bl, [esi+3]
		.if(ah == al)
			JE endLoss
		.elseif(al == bh)
			JE endLoss
		.elseif(bh == bl)
			JE endLoss
		.endif
		add esi, 4
	loop rowCheck

	mov eax, 1000
	call delay
	call clrscr
	mov edx, offset gameoverstring
	call writestring
	EXIT
	endLoss :
	RET
LOSS ENDP

movementFunction PROC
	mov dl, 0
	move0:
	cmp bh, 0
		JNZ move1
	mov bh, bl
	mov bl, 0
	
	move1:
	cmp al, 0
		JNZ move2
	mov al, bh
	mov bh, bl
	mov bl, 0
	move2:
	cmp ah,0
		JNZ move3
	mov ah, al
	mov al, bh
	mov bh, bl
	mov bl, 0

	move3:
	;.if(dl == 0)
	cmp dl, 0
		JNE movereturn
	;.elseif(ah == 0)
	cmp ah, 0
		JZ move4
	;.elseif(ah == al)
	cmp ah, al
		JNE move4
	inc ah
	mov al, 0

	move4:
	;.if(al == 0)
	cmp al, 0
		JZ move5
	;.elseif(al == bh)
	cmp al, bh
		JNE move5
	inc al
	mov bh, 0

	move5:
	;.if(bh == 0)
	cmp bh, 0
		JZ move6
    ;.elseif(bh == bl)
	cmp bh, bl
		JNE move6
	;.endif
	inc bh
	mov bl, 0
	move6:
	inc dl
	JMP move0
	movereturn :
	RET
movementFunction ENDP

arrowUp PROC USES ECX ESI EAX EDX
	mov esi, offset state
	mov ecx, 4
	mov edx, 0
	uplabel:
		mov ah, [esi]
		mov al, [esi+4]
		mov bh, [esi+8]
		mov bl, [esi+12]
		call movementFunction
		;cmp ah, [esi] 
		.if(ah == [esi])
			JNE updiff
		;cmp al, [esi+4]
		.elseif(al == [esi+4])
			JNE updiff
		;cmp bh, [esi+8]
		.elseif(bh == [esi+8])
			JNE updiff
		;cmp bl,[esi+12]
		.elseif(bl == [esi+12])
			JNE updiff
		JMP upcontinue
		.endif
		updiff:
			inc dh

		upcontinue:
		mov [esi],    ah
		mov [esi+4],  al
		mov [esi+8],  bh
		mov [esi+12], bl
		inc si
	loop uplabel
	
	.if(dh == 0)
		JE upNoChange
	.endif

	Call genRandom
	Call Clrscr
	Call displayFunction

	upNoChange :
	RET
arrowUp ENDP

arrowDown PROC USES ECX ESI EAX EDX
	mov esi, offset state
	mov ecx, 4
	mov edx, 0
	downloop:
		mov dl, 1
		mov ah, [esi+12]
		mov al, [esi+8]
		mov bh, [esi+4]
		mov bl, [esi]
		call movementFunction
		.if(ah == [esi+12])
			JNE downdiff
		.elseif(al == [esi+8])
			JNE downdiff
		.elseif(bh == [esi+4])
			JNE downdiff
		.elseif(bl == [esi])
			JNE downdiff
		.else
	     	JMP downcontinue
		.endif
		downdiff:
			inc dh

		downcontinue:
		mov [esi+12], ah
		mov [esi+8],  al
		mov [esi+4],  bh
		mov [esi],    bl
		inc si
	loop downloop

    .if(dh == 0)
		JE downNoChange
	.endif
	Call genRandom
	call Clrscr
	call displayFunction

	downNoChange :
	RET
arrowDown ENDP

arrowLeft PROC USES ECX ESI EAX EDX
	mov esi, offset state
	mov ecx, 4
	mov edx, 0
	leftloop:
		mov dl, 1
		mov ah, [esi]
		mov al, [esi+1]
		mov bh, [esi+2]
		mov bl, [esi+3]
		call movementFunction
		.if(ah == [esi])
			JNE leftdiff
		.elseif(al == [esi+1])
			JNE leftdiff
		.elseif(bh == [esi+2])
			JNE leftdiff
		.elseif(bl == [esi+3])
			JNE leftdiff
		.else
			JMP leftcontinue
		.endif
		leftdiff:
			inc dh

		leftcontinue:
		mov [esi],   ah
		mov [esi+1], al
		mov [esi+2], bh
		mov [esi+3], bl
		add si, 4
	loop leftloop

	.if(dh == 0)
		JE leftNoChange
	.endif
	Call genRandom
	call Clrscr
	call displayFunction

	leftNoChange :
	RET
arrowLeft ENDP

arrowRight PROC USES ECX ESI EAX EDX
	mov esi, offset state
	mov ecx, 4
	mov edx, 0
	rightloop:
		mov dl, 1
		mov ah, [esi+3]
		mov al, [esi+2]
		mov bh, [esi+1]
		mov bl, [esi]
		call movementFunction
		.if(ah == [esi+3])
			JNE rightdiff
		.elseif(al == [esi+2])
			JNE rightdiff
		.elseif(bh == [esi+1])
			JNE rightdiff
		.elseif(bl == [esi])
			JNE rightdiff
		.else
			JMP rightcontinue
		.endif
		rightdiff:
			inc dh

		rightcontinue:
		mov [esi+3],    ah
		mov [esi+2],  al
		mov [esi+1],  bh
		mov [esi], bl
		add si, 4
	loop rightloop

	.if(dh == 0)
		JE rightNoChange
	.endif
	Call genRandom
	call Clrscr
	call displayFunction

	rightNoChange :
	RET
arrowRight ENDP

displayFunction PROC USES ESI EDI EAX EBX ECX EDX
	
	MOV edx , OFFSET board
	call writestring 

	
	mov esi, offset x_axis
	mov edi, offset y_axis
	mov ebx, offset state
	mov ecx, lengthof x_axis

	L1 :
		mov eax, [ebx]
		.if(al == 0)
			JZ continue
		.endif
		call selectColor

		mov dh, [esi]
		mov dl, [edi]
		mov ax, dx 
		call GotoXY
		;MOV EDX, OFFSET block
		;CaLL WriteString

		inc ah
		mov dx, ax
		call GotoXY
		MOV EDX, OFFSET block2
		CaLL WriteString

		inc ah
		mov dx, ax
		call GotoXY
		Call selectDigit
		CaLL WriteString

		inc ah
		mov dx, ax
		call GotoXY
		MOV EDX, OFFSET block2
		CaLL WriteString
		
		inc ah
		mov dx, ax
		;call GotoXY
		;MOV EDX, OFFSET block
		;CaLL WriteString

		call assignColor
		continue :
		inc bx
		inc si
		inc di
	loop L1
	mov dh, 00
	mov dl, 60
	Call GotoXY
	RET
displayFunction ENDP

assignColor PROC USES EAX
	mov eax, white + 12*16
	call selectColor
	call settextcolor
	RET
assignColor ENDP

selectColor PROC
	cmp al, 1
	;.if(al == 1)
	cmp al, 1
        JNE color4
	;.endif
	mov eax, white + 9*16
    JMP setcolor
    color4:
    ;.if(al == 2)
	cmp al, 2
        JNE color8
	;.endif
	mov eax, white + 1*16
    JMP setcolor
	color8:
    ;.if(al == 3)
	cmp al, 3
        JNE color16
	;.endif
	mov eax, white + 13*16
    JMP setcolor
  color16:
    ;.if(al == 4)
	cmp al, 4
        JNE color32
	;.endif
	mov eax, white + 5*16
    JMP setcolor
	color32:
    ;.if(al == 5)
	cmp al, 5
        JNE color64
	;.endif
	mov eax, white + 12*16
    JMP setcolor
	color64:
    ;.if(al == 6)
	cmp al, 6
		JG color128
	;.endif
	mov eax, white + 4*16
    JMP setcolor
	color128:
	mov eax, black + 14*16
	setcolor:
	call settextcolor
    RET
selectColor ENDP

selectDigit PROC USES EAX EBX
    mov al, [ebx]

    ;.if(al == 1)
	cmp al, 1
        JNE select4
	;.endif
    mov edx, offset data2    
	RET
    select4:
    ;.if(al == 2)
	cmp al, 2
        JNE select8
	;.endif
    mov edx, offset data4
	RET
    select8:
   ;.if(al == 3)
   cmp al, 3
        JNE select16
	;.endif
    mov edx, offset data8
	RET
    select16:
    ;.if(al == 4)
	cmp al, 4
        JNE select32
	;.endif
    mov edx, offset data16
	RET
    select32:
    ;.if(al == 5)
	cmp al, 5
        JNE select64
	;.endif
    mov edx, offset data32
	RET
    select64:
    ;.if(al == 6)
	cmp al, 6
        JNE select128
	;.endif
    mov edx, offset data64
	RET
    select128:
    ;.if(al == 7)
	cmp al, 7
        JNE select256
	;.endif
    mov edx, offset data128
	RET
    select256:
    ;.if(al == 8)
	cmp al, 8
        JNE select512
	;.endif
    mov edx, offset data256
	RET
    select512:
    ;.if(al == 9)
	cmp al, 9
        JNE select1024
	;.endif
    mov edx, offset data512
	RET
    select1024:
    ;.if(al == 10)
	cmp al, 10
        JNE select2048
	;.endif
    mov edx, offset data1024
	RET
    select2048:
    ;.if(al == 11)
	cmp al, 11
        JNE ChooseNumberReturn
	;.endif
    mov edx, offset data2048
	ChooseNumberReturn:
    RET
selectDigit ENDP

genRandom PROC USES EAX EBX ECX
	call Randomize
	again :
	mov eax, 16
	call RandomRange
	mov ecx, eax
	mov ebx, offset state
	add ebx, ecx
	mov al, [ebx]
	;.if(al == 0)
	cmp al, 0
		JNE again
	;.endif
	mov esi, offset x_axis
	add esi, ecx
	mov edi, offset y_axis
	add edi, ecx

	mov eax, 4
	call RandomRange
	;.if(al == 3)
	cmp al, 3
		JE generate4
	cmp al, 4
		JE generate4
	;.endif
	jmp generate2

	generate4:
	mov al, 2
	mov [ebx], al
	RET

	generate2:
	mov al, 1
	mov [ebx], al
	RET

genRandom ENDP
END main
