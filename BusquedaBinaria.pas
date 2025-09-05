program BusquedaBinaria;

uses crt;

const
  N = 10;

type
  TArreglo = array[1..N] of integer;

var
  arr: TArreglo;
  objetivo: integer;
  inicio, fin, medio, pos, i: integer;

begin
  clrscr;

  { Inicializar arreglo ORDENADO }
  arr[1] := 2;   arr[2] := 5;   arr[3] := 8;   arr[4] := 12;  arr[5] := 16;
  arr[6] := 23;  arr[7] := 38;  arr[8] := 45;  arr[9] := 56;  arr[10] := 72;

  writeln('Arreglo ordenado:');
  for i := 1 to N do
    write(arr[i]:4);
  writeln;

  { Leer número a buscar }
  write('Ingrese el numero a buscar: ');
  readln(objetivo);

  { Inicializar variables }
  inicio := 1;
  fin := N;
  pos := -1;

  { Algoritmo de búsqueda binaria }
  while (inicio <= fin) and (pos = -1) do
  begin
    medio := (inicio + fin) div 2;
    if arr[medio] = objetivo then
      pos := medio
    else if arr[medio] < objetivo then
      inicio := medio + 1
    else
      fin := medio - 1;
  end;

  { Mostrar resultado }
  if pos = -1 then
    writeln('Numero no encontrado en el arreglo.')
  else
    writeln('Numero encontrado en la posicion: ', pos);

  readln;
end.
