            PROGRAM BUSQUEDA_BINARIA
            
      PARAMETER (N = 10)
      INTEGER ARR(N), OBJETIVO
      INTEGER INICIO, FIN, MEDIO, POS, I

      DATA ARR /2, 5, 8, 12, 16, 23, 38, 45, 56, 72/

      PRINT *, 'Arreglo ordenado:'
      PRINT *, (ARR(I), I = 1, N)

      PRINT *, 'Ingrese el numero a buscar:'
      READ *, OBJETIVO

      INICIO = 1
      FIN = N
      POS = -1

 10   IF (INICIO .LE. FIN) THEN
       MEDIO = (INICIO + FIN) / 2
       IF (ARR(MEDIO) .EQ. OBJETIVO) THEN
         POS = MEDIO
         GOTO 20
       ELSE IF (ARR(MEDIO) .LT. OBJETIVO) THEN
         INICIO = MEDIO + 1
       ELSE
         FIN = MEDIO - 1
       END IF
       GOTO 10
      END IF

 20   IF (POS .EQ. -1) THEN
       PRINT *, 'Numero no encontrado en el arreglo.'
      ELSE
       PRINT *, 'Numero encontrado en la posicion:', POS
      END IF
      
      PAUSE

      END

