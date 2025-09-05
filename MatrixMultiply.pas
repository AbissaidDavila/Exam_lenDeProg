program MatrixMultiply;

uses crt;

const
  N = 2; { Filas de A }
  M = 3; { Columnas de A y filas de B }
  P = 2; { Columnas de B }

type
  TMatrizA = array[1..N, 1..M] of real;
  TMatrizB = array[1..M, 1..P] of real;
  TMatrizR = array[1..N, 1..P] of real;

var
  matrizA: TMatrizA;
  matrizB: TMatrizB;
  resultado: TMatrizR;
  i, j, k: integer;

begin
  clrscr;

  { Inicialización de Matriz A }
  matrizA[1,1] := 1;  matrizA[1,2] := 2;  matrizA[1,3] := 3;
  matrizA[2,1] := 4;  matrizA[2,2] := 5;  matrizA[2,3] := 6;

  { Inicialización de Matriz B }
  matrizB[1,1] := 7;   matrizB[1,2] := 8;
  matrizB[2,1] := 9;   matrizB[2,2] := 10;
  matrizB[3,1] := 11;  matrizB[3,2] := 12;

  { Inicializar resultado en 0 }
  for i := 1 to N do
    for j := 1 to P do
      resultado[i,j] := 0;

  { Multiplicación de matrices }
  for i := 1 to N do
    for j := 1 to P do
      for k := 1 to M do
        resultado[i,j] := resultado[i,j] + matrizA[i,k] * matrizB[k,j];

  { Imprimir Matriz A }
  writeln('Matriz A:');
  for i := 1 to N do
  begin
    for j := 1 to M do
      write(matrizA[i,j]:8:2);
    writeln;
  end;

  { Imprimir Matriz B }
  writeln('Matriz B:');
  for i := 1 to M do
  begin
    for j := 1 to P do
      write(matrizB[i,j]:8:2);
    writeln;
  end;

  { Imprimir Resultado }
  writeln('Resultado de la multiplicacion:');
  for i := 1 to N do
  begin
    for j := 1 to P do
      write(resultado[i,j]:8:2);
    writeln;
  end;

  readln;
end.
