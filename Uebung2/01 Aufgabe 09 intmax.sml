(* intmax fkt Aufgabe 9 *)
(* ~/bin/smlnj/bin/sml <~/Documents/sml/intmax.sml *)

fun intmax(x:int, y:int):int = if (x<=y) then y else x;

intmax(2,3);
print "Done\n";
