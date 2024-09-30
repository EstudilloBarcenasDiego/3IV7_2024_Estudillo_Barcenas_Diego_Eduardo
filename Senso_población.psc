Algoritmo Senso_poblaci�n 
	Escribir "Ingrese la cantidad de personas (N):"
	Leer N
	
	Dimension nacimientos[N], fallecimientos[N]
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "Ingrese el a�o de nacimiento de la persona ", i, ":"
		Leer nacimientos[i]
		Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ":"
		Leer fallecimientos[i]

	FinPara
	
	Escribir "Ingrese el a�o que desea consultar:"
	Leer a�oConsulta
		
	contadorVivos <- 0
	edadMasJoven <- 10000
	edadMasAnciano <- -1
		
	Para j<-1 Hasta N Con Paso 1 Hacer
		Si a�oConsulta >= nacimientos[j] Y a�oConsulta <= fallecimientos[j] Entonces
			contadorVivos <- contadorVivos + 1
			edad <- a�oConsulta - nacimientos[j]
			
			Si edad < edadMasJoven Entonces
				edadMasJoven <- edad
			FinSi
			
			Si edad > edadMasAnciana Entonces
				edadMasAnciano <- edad
			FinSi
		FinSi
	FinPara
	
	Si contadorVivos > 0 Entonces
		Escribir "En el a�o ", a�oConsulta, ":"
		Escribir "Cantidad de personas vivas: ", contadorVivos
		Escribir "Edad de la persona m�s joven: ", edadMasJoven
		Escribir "Edad de la persona m�s anciana: ", edadMasAnciano
		SiNo
	FinSi
FinAlgoritmo
