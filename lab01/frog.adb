with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure frog is
    PASSOU : Boolean := False;
    ARGS       : array (1 .. 2) of Integer;
    PULO       : Integer;
    CANOS       : Integer;
  
begin
    for I of ARGS loop
        Get(I);
    end loop;

    -- Informações de entrada
    PULO := ARGS(1); 
    CANOS := ARGS(2); 

    declare
        NUM_CANOS : array (1 .. CANOS) of Integer;
        DISTANCIA : Integer;
        
    begin
        for J of NUM_CANOS loop
            Get (J);
        end loop;

        for X in 1 .. (CANOS - 1) loop
          --Put_Line(Integer'Image (NUM_CANOS(X)));
          DISTANCIA := ABS(NUM_CANOS(X) - NUM_CANOS(X + 1));
          --Put_Line(Integer'Image (DISTANCIA));

            if (DISTANCIA > PULO) then
                PASSOU := True;
            end if;
        end loop;

        if PASSOU = True then
            Put_Line ("GAME OVER");
            
        elsif PASSOU = False then
          
            Put_Line ("YOU WIN");
        end if;
    end;
end frog;
