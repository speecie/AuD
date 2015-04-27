(* Aufgabe 12 listfn, Wende eine Funktion auf 2 Listen an *)

val bspListe = [1,2,3,4,5,6]

fun multiply (a:int,b:int): int = a*b;

fun length nil = 0 
| length (_::t):int = if t = nil then 1 else 1 + length t;

fun listfn (func, h1::t1, h2::t2):'a list = if length(h1::t1)=1 then func(h1,h2) :: nil else func(h1,h2) :: (listfn(func,t1,t2));

listfn(multiply, bspListe, bspListe);
length(bspListe);