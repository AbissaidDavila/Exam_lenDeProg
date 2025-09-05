#include <stdio.h>
#include <stdlib.h>

#define N 10

int main() {
    int arr[N] = {2, 5, 8, 12, 16, 23, 38, 45, 56, 72};
    int objetivo;
    int inicio = 0, fin = N - 1, medio;
    int pos = -1;  // -1 significa "no encontrado"
    int i;

    // Mostrar arreglo
    printf("Arreglo ordenado:\n");
    for (i = 0; i < N; i++) {
        printf("%4d", arr[i]);
    }
    printf("\n");

    // Leer número a buscar
    printf("Ingrese el numero a buscar: ");
    scanf("%d", &objetivo);

    // Algoritmo de búsqueda binaria
    while (inicio <= fin && pos == -1) {
        medio = (inicio + fin) / 2;

        if (arr[medio] == objetivo) {
            pos = medio;  // encontrado
        } else if (arr[medio] < objetivo) {
            inicio = medio + 1;  // buscar en mitad derecha
        } else {
            fin = medio - 1;     // buscar en mitad izquierda
        }
    }

    // Mostrar resultado
    if (pos == -1) {
        printf("Numero no encontrado en el arreglo.\n");
    } else {
        printf("Numero encontrado en la posicion: %d\n", pos);
    }
    system("pause");

    return 0;
}
