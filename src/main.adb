with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;


procedure Main is
   i,a : Integer;
   binario : array(0..20) of Integer;
   dig_hexa : array(0..15) of character;
begin
   dig_hexa(0..15) := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   i := 1;
   Put_Line("Introduce el numero a convertir");
   get(a);

   for i in 1..20 loop
      binario(i):=2;
   end loop;

   while a/=0 loop
      binario(i) := a mod 2;
      a := a/2;
      i:=i+1;
   end loop;

   for i in reverse 1..20 loop
      if binario(i)/=2 then
         Put(binario(i));
      end if;
   end loop;
   Put_Line("");
   Put_Line("tu numero en hexadecimal es:");
   Put(dig_hexa(10));

end ;
