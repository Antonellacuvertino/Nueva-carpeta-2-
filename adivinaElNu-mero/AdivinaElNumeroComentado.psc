Proceso AdivinaElNumero
    // Inicializar variables
    Definir numeroAdivinar, intentos, intentoUsuario como entero; // Se definen las variables necesarias: numeroAdivinar para almacenar el n�mero a adivinar, intentos para la cantidad de intentos disponibles e intentoUsuario para el n�mero ingresado por el usuario.
    Definir acertado como logico; // Se define la variable acertado para indicar si el usuario ha adivinado el n�mero.
	
    acertado <- Falso; // Se inicializa la variable acertado como falso.
	
    // Generar un n�mero aleatorio para adivinar entre 1 y 10
    numeroAdivinar <- Aleatorio(1, 10); // Se genera un n�mero aleatorio entre 1 y 10 y se asigna a la variable numeroAdivinar.
	
    // Solicitar al usuario la cantidad de intentos
    Escribir "Ingrese la cantidad de intentos:"; // Se muestra un mensaje solicitando al usuario que ingrese la cantidad de intentos.
    Leer intentos; // Se lee la cantidad de intentos ingresada por el usuario y se almacena en la variable intentos.
	
    // Realizar la repetici�n mientras haya intentos y no se haya acertado
    Mientras (intentos > 0 Y No acertado) Hacer // Se inicia un bucle mientras queden intentos y el usuario no haya adivinado el n�mero.
        // Solicitar al usuario que ingrese un n�mero
        Escribir "Intento actual. Ingrese un n�mero:"; // Se muestra un mensaje solicitando al usuario que ingrese un n�mero.
        Leer intentoUsuario; // Se lee el n�mero ingresado por el usuario y se almacena en la variable intentoUsuario.
		
        // Verificar si el n�mero ingresado es correcto
        Si intentoUsuario = numeroAdivinar Entonces // Se comprueba si el n�mero ingresado por el usuario es igual al n�mero a adivinar.
            Escribir "�Felicitaciones! Has adivinado el n�mero."; // Si el n�mero es correcto, se muestra un mensaje de felicitaciones.
            acertado <- Verdadero; // Se establece la variable acertado como verdadero para indicar que el usuario ha adivinado el n�mero.
        Sino
            Escribir "N�mero incorrecto. Te quedan ", intentos - 1, " intentos."; // Si el n�mero es incorrecto, se muestra un mensaje indicando que el n�mero es incorrecto y cu�ntos intentos quedan.
        FinSi
		
        // Decrementar la cantidad de intentos
        intentos <- intentos - 1; // Se decrementa la cantidad de intentos restantes.
		
    Fin Mientras // Fin del bucle.
	
    // Mostrar mensaje si no se adivin� el n�mero en los intentos permitidos
    Si No acertado Entonces // Se comprueba si el usuario no ha adivinado el n�mero.
        Escribir "�Lo siento! No has adivinado el n�mero. El n�mero era: ", numeroAdivinar; // Si el usuario no ha adivinado el n�mero, se muestra un mensaje indicando el n�mero correcto.
    FinSi
	
FinProceso // Fin del proceso.
