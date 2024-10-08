Algoritmo VerificarPrimo

    Escribir "Ingrese un número:"
    Leer N
    Si numero <= 2 Entonces
        i <- 2
        Mientras i <= numero / 2 Hacer
            Si numero Mod i = 0 Entonces
                Primo <- Falso
                i <- numero 
            FinSi
            i <- i + 1
		FinMientras
		Escribir numero, "Es un número primo"
	SiNo
		Escribir "No es primo"
	FinSi
FinAlgoritmo