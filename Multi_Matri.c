#include <stdio.h>
#include <stdlib.h>

int main() {
    // Dimensiones
    const int N = 2; // Filas de A
    const int M = 3; // Columnas de A y filas de B
    const int P = 2; // Columnas de B

    // Declaración de matrices
    double matrizA[2][3] = {
        {1.0, 2.0, 3.0},
        {4.0, 5.0, 6.0}
    };

    double matrizB[3][2] = {
        {7.0, 8.0},
        {9.0, 10.0},
        {11.0, 12.0}
    };

    double resultado[2][2] = {0}; // Inicializada en ceros

    // Multiplicación de matrices: resultado = A * B
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < P; j++) {
            for (int k = 0; k < M; k++) {
                resultado[i][j] += matrizA[i][k] * matrizB[k][j];
            }
        }
    }

    // Imprimir matrices
    printf("Matriz A:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            printf("%8.2f", matrizA[i][j]);
        }
        printf("\n");
    }

    printf("Matriz B:\n");
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < P; j++) {
            printf("%8.2f", matrizB[i][j]);
        }
        printf("\n");
    }

    printf("Resultado de la multiplicacion:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < P; j++) {
            printf("%8.2f", resultado[i][j]);
        }
        printf("\n");
    }
    system("pause");

    return 0;
}
