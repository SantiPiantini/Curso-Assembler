.model small ;Declaracion del programa 
.stack ;Segmento de pila (1024) por defecto
.data ;Declaracion de las variables
	msg db "Hello world Curso Assembler!!!$" ;msg es el nombre de la variable y db es el tipo de dato

.code ;Todo el codigo y sus metodos 

	main PROC
		;carga de segmento de datos a segmento de codigo
		mov ax,@data
		mov ds,ax

		;impresion en consola
		mov dx, offset msg
		mov ah,9
		int 21h

		.exit
	main ENDP

end main