Algoritmo VerificarPrimo
    Definir n, i, contador Como Entero
    Escribir "Ingrese un n�mero: "
    Leer n
    contador <- 0
    Para i <- 1 Hasta n Hacer
        Si n % i == 0 Entonces
            contador <- contador + 1
        FinSi
    FinPara
    Si contador == 2 Entonces
        Escribir "El n�mero ", n, " es primo."
    SiNo
        Escribir "El n�mero ", n, " no es primo."
    FinSi
FinAlgoritmo