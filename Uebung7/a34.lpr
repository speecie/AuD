program partielle_suche;

type beziehung = record
     klein,gross: char;
end;

type menge = set of char;

function erzeugeRestMenge(eingabe:array of beziehung):menge;
var i:byte;
    restmenge:menge;
begin
  restmenge:=[];
  for i:=0 to length(eingabe) do
  begin
    if eingabe[i].gross in restmenge then WriteLn('nix') else Include(restmenge,eingabe[i].gross);
    if eingabe[i].klein in restmenge then WriteLn('nix') else Include(restmenge,eingabe[i].klein);
  end;
  erzeugeRestMenge:=restmenge;
end;

var menge_rest, menge_fertsch, menge_arbeit: menge;
    ergebnis_liste : array[1..9] of char;
    eingabe: array[1..10] of beziehung;
    i,n:byte;
    b:char;
begin
    eingabe[1].klein:='1';
    eingabe[1].gross:='3';
    eingabe[2].klein:='3';
    eingabe[2].gross:='7';
    eingabe[3].klein:='7';
    eingabe[3].gross:='4';
    eingabe[4].klein:='7';
    eingabe[4].gross:='5';
    eingabe[5].klein:='4';
    eingabe[5].gross:='6';
    eingabe[6].klein:='9';
    eingabe[6].gross:='2';
    eingabe[7].klein:='9';
    eingabe[7].gross:='5';
    eingabe[8].klein:='2';
    eingabe[8].gross:='8';
    eingabe[9].klein:='5';
    eingabe[9].gross:='8';
    eingabe[10].klein:='8';
    eingabe[10].gross:='6';
    menge_fertsch:=[];
    menge_rest:=erzeugeRestMenge(eingabe);
    for b in menge_rest do WriteLn(b);
    n:=1;
    repeat
     menge_arbeit:=menge_rest-menge_fertsch;
     for i:=1 to length(eingabe) do
         begin
            if not (eingabe[i].klein in menge_fertsch) and (eingabe[i].gross in menge_arbeit) then Exclude(menge_arbeit,eingabe[i].gross);
         end;
     menge_fertsch:=menge_fertsch+menge_arbeit;
     for b in menge_arbeit do
         begin
            ergebnis_liste[n]:=b;
            n:=n+1;
         end;
    until menge_arbeit=[];
    for i:=1 to length(ergebnis_liste) do WriteLn(ergebnis_liste[i]);
    ReadLn(b);
end.

