      PROGRAM TRIANGULO_PASCAL
      INTEGER TAMANO, I, J, NUMERO, ESPACIOS

      WRITE(*,*) '=== TRIANGULO DE PASCAL ==='
      WRITE(*,*) 'Ingrese el tamaño del triangulo: '
      READ(*,*) TAMANO

      IF (TAMANO .LE. 0) THEN
          WRITE(*,*) 'El tamaño debe ser mayor que 0'
          STOP
      ENDIF

      WRITE(*,*) ' '
      WRITE(*,*) 'Triangulo de Pascal - Tamaño ', TAMANO
      WRITE(*,*) ' '

      DO 100 I = 0, TAMANO-1
          NUMERO = 1

          ! Calcular espacios para centrar
          ESPACIOS = (TAMANO - I - 1) * 3
          DO 50 J = 1, ESPACIOS
              WRITE(*,10)
   50     CONTINUE
   10     FORMAT(' ', $)

          ! Imprimir números de la fila
          DO 200 J = 0, I
              WRITE(*,20) NUMERO
              NUMERO = NUMERO * (I - J) / (J + 1)
  200     CONTINUE
   20     FORMAT(I6, $)

          WRITE(*,*) ' '
  100 CONTINUE
      PAUSE

      END
