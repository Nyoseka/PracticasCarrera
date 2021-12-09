mascota("Tu mascota ideal puede ser un perro, hay tanto de razas pequeñas como grandes",1).
mascota("Tu mascota ideal puede ser un gato, no requiere de muchos cuidados y se adaptan a diferentes espacios",2).
mascota("Tu mascota ideal puede ser un pajaro, ideal para personas con alergias",3).
mascota("Tu mascota ideal puede ser un hamster, ideal para niños y espacios pequeños",4).
mascota("Tu mascota idea puede ser una tortuga, hay tanto acuaticas para un espacio pequeño como terrestres para espacios más grandes",5).
mascota("Tu mascota ideal puede ser un pez, pueden proporcionarte tranquilidad y son fáciles de cuidar",6).

puntostest(Preguntas):-
    E1==4,mascota(test,punto),punto=1;
    E2==3,mascota(test,punto),punto=2;
    E3==4,mascota(test,punto),punto=3;
    E4==2,mascota(test,punto),punto=4;
    E5==3,mascota(test,punto),punto=5;
    E6==1,mascota(test,punto),punto=6.

test(Preguntas):-
    writeln("***MASCOTAS EN BASE A TU ESTILO DE VIDA***"),
    writeln("Responde con 1 para sí y 0 para no"),
    writeln("¿Posees una casa grande?"),
    read(R1),
    writeln("¿Cuentas con patio?"),
    read(R2),
    writeln("¿Te consideras una persona responsable?"),
    read(R3),
    writeln("¿Tienes un ritmo de vida acelerado?"),
    read(R4),
    writeln("¿Vives solo?"),
    read(R5),
    writeln("¿Viven contigo personas con alergias?"),
    read(R6),
    writeln("¿Tienes niños?"),
    read(R7),

E1 is R1 + R2 + R3 + R4,
E2 is R1 + R4 + R5,
E3 is R1 + R3 + R5 + R6,
E4 is R3 + R7,
E5 is R1 + R3 + R6,
E6 is R7,

puntostest(test,E1,E2,E3,E4,E5,E6).
