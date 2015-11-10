make_viajero(ID,ML,HT,PT,viajero(ID,ML,HT,PT)) .
make_hotel(IHO,NM,CT,NA,PR,VP,hotel(IHO,NM,CT,NA,PR,VP)) .

htpareja(VIA,N,PRE,[],[]).
htpareja(VIA,N,PRE,[HTEL|LH],R) :- htpareja(VIA,N,PRE,LH,R1), R is R1 .
htpareja(VIA,N,PRE,[HTEL|LH],R) :- VIA = viajero(_,_,_,PTAX), HTEL = hotel(_,_,CT1,_,PRE1,VP1),CT1 >= 3, (( N * PR1 + N * 0.03 * CT1 - VP1 * PTAX )/N ) < PRE, htpareja(VIA,N,PRE,LH,R1), R is [p(NM,NA)|R1] . 
