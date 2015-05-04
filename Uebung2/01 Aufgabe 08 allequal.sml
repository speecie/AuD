fun allequal (x,y,z):bool = ( x=y ) andalso ( y=z );

allequal (1,1,1.0)

(* Vergleich von int und real nicht möglich. Vergleich von real und real mit == *)