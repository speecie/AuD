(* drop fkt Aufgabe 10 *)

val bspListe = [1,2,3,4,5,6]

fun tail (h::t):'a list = t;

fun drop (liste:'a list, i:int):'a list = if i=1 then tail(liste) else drop(tail(liste),i-1);

drop(bspListe, 3);