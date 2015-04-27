(* Aufgabe 11, fromto, Liste von a bis b ausgeg. *)

val bspListe = [1,2,3,4,5,6]

fun intmax(x:int, y:int):int = if (x<=y) then y else x;

fun intmin(x:int, y:int):int = if (x>=y) then y else x;

fun tail (h::t):'a list = t;

fun head (h::t, i:int):'a list = if i=1 then h :: nil else h :: (head(t,i-1));

fun drop (liste:'a list, i:int):'a list = if i=1 then tail(liste) else drop(tail(liste),i-1);

fun fromto (liste: 'a list, a:int, b:int): 'a list = drop(head(liste,intmax(a,b)), intmin(a,b)-1);

fromto(bspListe, 2, 4); 