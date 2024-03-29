pregunta("Quieres desarrollar un sitio web?").
pregunta("Quieres desarrollar una apliacion de ios?").
pregunta("Quieres desarrollar un proyecto de inteligencia artificial?").
pregunta("Quieres hacer un analisis de datos?").
pregunta("Quieres desarrollar un videojuego?").

preguntar :-
  repeat,
  pregunta(Pregunta),
  write(Pregunta), write(" (s/n): "), read(Respuesta),
  (
    Respuesta = s -> (
      write("Respuesta afirmativa"),
      !
    );
    Respuesta = salir -> !;
    Respuesta = n -> fail
  ).

main :-
  write("Por favor, responda las siguientes preguntas."), nl,
  preguntar.