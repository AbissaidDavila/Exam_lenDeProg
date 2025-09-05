            PROGRAM MATRIX_MULTIPLY
      INTEGER N, M, P
      PARAMETER (N=2, M=3, P=2)
      REAL MATRIZ_A(N,M), MATRIZ_B(M,P), RESULTADO(N,P)
      INTEGER I, J, K
      
      DATA MATRIZ_A / 1.0, 4.0, 2.0,
     1                 5.0, 3.0, 6.0 /

      DATA MATRIZ_B / 7.0, 9.0, 11.0,
     1                 8.0, 10.0, 12.0 /

      DO 20 I = 1, N
         DO 10 J = 1, P
            RESULTADO(I,J) = 0.0
   10    CONTINUE
   20 CONTINUE

      DO 40 I = 1, N
         DO 30 J = 1, P
            DO 25 K = 1, M
               RESULTADO(I,J) = RESULTADO(I,J)
     1                           + MATRIZ_A(I,K) * MATRIZ_B(K,J)
   25       CONTINUE
   30    CONTINUE
   40 CONTINUE

      PRINT *, 'Matriz A:'
      DO 50 I = 1, N
         PRINT *, (MATRIZ_A(I,J), J=1,M)
   50 CONTINUE

      PRINT *, 'Matriz B:'
      DO 60 I = 1, M
         PRINT *, (MATRIZ_B(I,J), J=1,P)
   60 CONTINUE

      PRINT *, 'Resultado de la multiplicacion:'
      DO 70 I = 1, N
         PRINT *, (RESULTADO(I,J), J=1,P)
   70 CONTINUE
      PAUSE

      END
