		AND		R1,R1, #0
		AND		R4,R4, #0
		AND		R6, R6,#0
		AND		R7,R7, #0
		AND		R5,R5, #0
		ADD		R1,R1, #1 ; n
		ADD		R4,R4, #2147483648  ;coloca em R6 o valor para TST
		ADD		R6,R6, #5 ; número base (a1)
		ADD		R7,R7, #1000 ; RX*100
		ADD		R7,R7, #1000 ; RX*100
		ADD		R7,R7, #1000 ; RX*100
		ADD		R7,R7, #1000 ; RX*100
		ADD		R7,R7, #1000 ; RX*100
		STR		R6,[R7,#0]   ; armazena o número base no endereço #500
		
		
		
	FOR
		CMP		R1, #10 ; se R1 é menor que 10 continua o loop
		BEQ		DONE
		ADD		R6, R6, R6  ;armazena os valores da pg
		ADD		R7,R7, #4  ;desloca 4 bytes
		STR		R6, [R7, #0] ;armazena o conteúdo de R6 no endereço de R7
		ADD		R1, R1, #1  ;n=n+1
		TST		R4, R6 ;testa se o valor de R6 é inferior a 2147483648
		B		FOR
	DONE
		LDR		R5,[R7,#0] ; armazena o ultimo valor da PG em R5
