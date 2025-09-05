#include <stdio.h>
#include <stdlib.h>

void dibujarTrianguloPascal(int tamano) {
    if (tamano <= 0) {
        printf("El tamanio debe ser mayor que 0\n");
        return;
    }
    
    printf("\nTriangulo de Pascal - Tamanio %d:\n\n", tamano);
    
    for (int i = 0; i < tamano; i++) {
        int numero = 1;
        
        // Espacios para centrar
        for (int j = 0; j < tamano - i - 1; j++) {
            printf("   ");
        }
        
        // Imprimir números de la fila
        for (int j = 0; j <= i; j++) {
            printf("%6d", numero);
            numero = numero * (i - j) / (j + 1);
        }
        
        printf("\n");
    }
}

int main() {
    int tamano;
    
    printf("=== TRIANGULO DE PASCAL ===\n");
    printf("Ingrese el tamanio del triangulo: ");
    scanf("%d", &tamano);
    
    dibujarTrianguloPascal(tamano);
    system("pause");
    
    return 0;
}