Proceso AdivinaElNumero
    // Inicializar variables
    Definir numeroAdivinar, intentos, intentoUsuario como entero; // Se definen las variables necesarias: numeroAdivinar para almacenar el número a adivinar, intentos para la cantidad de intentos disponibles e intentoUsuario para el número ingresado por el usuario.
    Definir acertado como logico; // Se define la variable acertado para indicar si el usuario ha adivinado el número.
	
    acertado <- Falso; // Se inicializa la variable acertado como falso.
	
    // Generar un número aleatorio para adivinar entre 1 y 10
    numeroAdivinar <- Aleatorio(1, 10); // Se genera un número aleatorio entre 1 y 10 y se asigna a la variable numeroAdivinar.
	
    // Solicitar al usuario la cantidad de intentos
    Escribir "Ingrese la cantidad de intentos:"; // Se muestra un mensaje solicitando al usuario que ingrese la cantidad de intentos.
    Leer intentos; // Se lee la cantidad de intentos ingresada por el usuario y se almacena en la variable intentos.
	
    // Realizar la repetición mientras haya intentos y no se haya acertado
    Mientras (intentos > 0 Y No acertado) Hacer // Se inicia un bucle mientras queden intentos y el usuario no haya adivinado el número.
        // Solicitar al usuario que ingrese un número
        Escribir "Intento actual. Ingrese un número:"; // Se muestra un mensaje solicitando al usuario que ingrese un número.
        Leer intentoUsuario; // Se lee el número ingresado por el usuario y se almacena en la variable intentoUsuario.
		
        // Verificar si el número ingresado es correcto
        Si intentoUsuario = numeroAdivinar Entonces // Se comprueba si el número ingresado por el usuario es igual al número a adivinar.
            Escribir "¡Felicitaciones! Has adivinado el número."; // Si el número es correcto, se muestra un mensaje de felicitaciones.
            acertado <- Verdadero; // Se establece la variable acertado como verdadero para indicar que el usuario ha adivinado el número.
        Sino
            Escribir "Número incorrecto. Te quedan ", intentos - 1, " intentos."; // Si el número es incorrecto, se muestra un mensaje indicando que el número es incorrecto y cuántos intentos quedan.
        FinSi
		
        // Decrementar la cantidad de intentos
        intentos <- intentos - 1; // Se decrementa la cantidad de intentos restantes.
		
    Fin Mientras // Fin del bucle.
	
    // Mostrar mensaje si no se adivinó el número en los intentos permitidos
    Si No acertado Entonces // Se comprueba si el usuario no ha adivinado el número.
        Escribir "¡Lo siento! No has adivinado el número. El número era: ", numeroAdivinar; // Si el usuario no ha adivinado el número, se muestra un mensaje indicando el número correcto.
    FinSi
	
FinProceso // Fin del proceso.
