program TrianguloPascal;
uses crt;

var
  tamano, i, j, numero: integer;

begin
  clrscr;
  writeln('=== TRIANGULO DE PASCAL ===');
  write('Ingrese el tama�o del triangulo: ');
  readln(tamano);
  
  if tamano <= 0 then
  begin
    writeln('El tama�o debe ser mayor que 0');
    halt;
  end;
  
  writeln;
  writeln('Triangulo de Pascal - Tama�o ', tamano, ':');
  writeln;
  
  for i := 0 to tamano - 1 do
  begin
    numero := 1;
    
    {Espacios para centrar}
    for j := 1 to (tamano - i - 1) * 3 do
      write(' ');
    
    {Imprimir n�meros de la fila}
    for j := 0 to i do
    begin
      write(numero:6);
      numero := numero * (i - j) div (j + 1);
    end;
    
    writeln;
  end;
  
  readln;
end.