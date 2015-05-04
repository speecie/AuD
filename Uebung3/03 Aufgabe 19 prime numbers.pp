program Hello;
var
	primeSet:set of byte;
	i,j:integer;
	b:byte;
begin
  writeln ('Start');
  primeSet := [2..255];
  for i:=2 to 255 do 
  begin
  	if i in primeSet then
  		begin
  			j:=2;
  			while ((i*j)<256) do 
  			begin
  				Exclude(primeSet,i*j);
  				j:=j+1; 
  			end;
  		end;
  end;
  for b in primeSet do writeln(b);
end.