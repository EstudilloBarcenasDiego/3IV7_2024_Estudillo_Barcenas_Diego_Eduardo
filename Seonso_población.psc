Algoritmo Senso_población 
	Escribir "Ingrese la cantidad de personas (N):"
	Leer N
	
	Dimension nacimientos[N], fallecimientos[N]
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "Ingrese el año de nacimiento de la persona ", i, ":"
		Leer nacimientos[i]
		Escribir "Ingrese el año de fallecimiento de la persona ", i, ":"
		Leer fallecimientos[i]

	FinPara
	
	Escribir "Ingrese el año que desea consultar:"
	Leer añoConsulta
		
	contadorVivos <- 0
	edadMasJoven <- 10000
	edadMasAnciano <- -1
		
	Para j<-1 Hasta N Con Paso 1 Hacer
		Si añoConsulta >= nacimientos[j] Y añoConsulta <= fallecimientos[j] Entonces
			contadorVivos <- contadorVivos + 1
			edad <- añoConsulta - nacimientos[j]
			
			Si edad < edadMasJoven Entonces
				edadMasJoven <- edad
			FinSi
			
			Si edad > edadMasAnciana Entonces
				edadMasAnciano <- edad
			FinSi
		FinSi
	FinPara
	
	Si contadorVivos > 0 Entonces
		Escribir "En el año ", añoConsulta, ":"
		Escribir "Cantidad de personas vivas: ", contadorVivos
		Escribir "Edad de la persona más joven: ", edadMasJoven
		Escribir "Edad de la persona más anciana: ", edadMasAnciano
		SiNo
	FinSi
FinAlgoritmo
