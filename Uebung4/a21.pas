program a21( input , output ) ;
type boolarray = array of boolean;
var verei, S, T : array [0..2] of boolean ;
  a,i:integer;
function union (Su , Tu :boolean ):boolean;
begin
  if Su OR Tu then union:=true else union:=false ;
end ;
function durchschleifen (Sd, Td:array of boolean):boolarray;
begin
  for i:=0 to length(S)-1 do verei[i]:=union(Sd[i],Td[i]);
end;
begin
S[0] := true;
S[1] := false;
S[2] := false;
T[0] := true;
T[1] := true;
T[2] := false;
durchschleifen(S,T);
for a:=1 to length(verei) do writeln ( verei[a-1] )   ;
//writeln (union(false,true));
ReadLn(a);
end.
