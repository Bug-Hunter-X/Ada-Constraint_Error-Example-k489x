```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 1;
   if X > 10 then
      Put_Line("X is greater than 10");
   end if;
   begin
      X := X + 11; 
   exception
      when Constraint_Error =>
         Put_Line("Constraint_Error handled");
   end;
   Put_Line("Program continues execution");
end Example;
```