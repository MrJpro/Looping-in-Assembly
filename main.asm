INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter the number of quizzes: ", 0
	userPrompt BYTE "Enter the quiz score: ", 0
	sumPrompt BYTE "The total of the quizzes is: ",0

.code
main PROC
	;display prompt string
	MOV edx, OFFSET prompt
	CALL writestring

	;get user input
	CALL readint

	;set the loop counter in ecx
	MOV ecx,eax
	;set repeating userPrompt string in edx
	MOV edx,OFFSET userPrompt
	;clear ebx to store sum
	MOV ebx,0
l1:
	;ask and get user input
	CALL writestring
	CALL readint
	;add inputted value to ebx
	ADD ebx,eax
	;loop and subtract 1 from ecx
	LOOP l1

	;display sumPrompt string
	MOV edx, OFFSET sumPrompt
	CALL writestring
	;move sum to eax
	MOV eax,ebx
	;display the sum
	CALL writeint
main ENDP
END main