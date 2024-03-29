pregunta("Quieres desarrollar un sitio web?").
pregunta("Quieres desarrollar una apliacion de ios?").
pregunta("Quieres desarrollar un proyecto de inteligencia artificial?").
pregunta("Quieres hacer un analisis de datos?").
pregunta("Quieres desarrollar un videojuego?").

recomendacion("Quieres desarrollar un sitio web?", "JavaScript").
recomendacion("Quieres desarrollar una apliacion de ios?", "Swift").
recomendacion("Quieres desarrollar un proyecto de inteligencia artificial?", "Python").
recomendacion("Quieres hacer un analisis de datos?", "Python o R").
recomendacion("Quieres desarrollar un videojuego?", "c++").

recomendar(Pregunta) :-
  recomendacion(Pregunta, Lenguaje),
  write("Puedes utilizar "), write(Lenguaje), write(" para tu proyecto.").

preguntar :-
  repeat,
  pregunta(Pregunta),
  write(Pregunta), write(" (s/n): "), read(Respuesta),
  (
    Respuesta = s -> (
      recomendar(Pregunta),
      !
    );
    Respuesta = salir -> !;
    Respuesta = n -> fail
  ).

main :-
  write("Por favor, responda las siguientes preguntas."), nl,
  preguntar.