program SetFont;

var
  ParamValue: integer;
  Code: integer;

begin
  if ParamCount <> 1 then
  begin
	  Writeln('this command needs a parameter : 4, 5 or 8') ;
  end else
  begin
    Val(ParamStr(1), ParamValue, Code);

    if Code = 0 then
    begin
    case ParamValue of
     4 : Writeln(#$1b'[?4264m');
     5 : Writeln(#$1b'[?4264h');
     8 : Writeln(#$1b'[?4264l');
     else Writeln('Err: Invalid parameter');
     end;
    end else
      WriteLn('Err: Invalid parameter');
  end
end.
