Proceso IMC2
	Definir nb,ap,etpv,sl Como Caracter
	Definir ed,ps,est,in Como Real
	Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
	Escribir ('     BIENVENIDO A LA CALCULADORA VIRTUAL DE IMC     ')
	Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
	i <- 1
	Repetir
		Escribir 'Datos Persona ',i
		Escribir 'nombre' Sin Saltar
		Leer nb
		Escribir 'apellido' Sin Saltar
		Leer ap
		Escribir 'Digite su estatura en cm' Sin Saltar
		Leer est
		est <- est/100
		Escribir 'Digite su peso en kg' Sin Saltar
		Leer ps
		in <- ps/(est^2)
		Escribir 'Digite la edad' Sin Saltar
		Leer ed
		Si ed<6 Entonces
			etpv <- 'Infante'
		SiNo
			Si ed>6 Y ed<=11 Entonces
				etpv <- 'Niñ@'
			SiNo
				Si ed>=12 Y ed<=19 Entonces
					etpv <- 'Adolescente'
				SiNo
					Si ed>=20 Y ed<=25 Entonces
						etpv <- 'Joven'
					SiNo
						Si ed>=26 Y ed<=59 Entonces
							etpv <- 'Adulto'
						SiNo
							Si ed>=60 Entonces
								etpv <- 'Anciano'
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Borrar Pantalla
		Si in<=16 Entonces
			sl <- 'Delgadez severa'
		SiNo
			Si in>16.1 Y in<16.999 Entonces
				sl <- 'Delgadez moderada'
			SiNo
				Si in>17 Y in<18.49 Entonces
					sl <- 'Delgadez leve'
				SiNo
					Si in>18.5 Y in<24.9 Entonces
						sl <- 'Normal'
					SiNo
						Si in>=25 Y in<29.9 Entonces
							sl <- 'Pre obeso'
						SiNo
							Si in>30 Y in<34.99 Entonces
								sl <- 'Obesidad leve'
							SiNo
								Si in>35 Y in<39.99 Entonces
									sl <- 'Obesidad media'
								SiNo
									Si in<40 Entonces
										sl <- 'Obesidad Morbida'
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Borrar Pantalla
		Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
		Escribir ('                    RESULTADO                       ')
		Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
		Escribir 'Datos',i,' :'
		Escribir 'Apellido y nombre: ',ap,' ',nb Sin Saltar
		Escribir ' '
		Escribir 'Edad:',ed,' (',etpv,')' Sin Saltar
		Escribir ' '
		Escribir 'IMC= ',trunc(in),' su estado es: ',sl Sin Saltar
		Escribir ' '
		Si sl<>'Normal' Entonces
			Escribir '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
			Escribir ' YSe recomienda visitar un medico'
			Escribir '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
			Escribir 'Desea obtener recomendaciones (s/n)'
			Leer reco
			Si reco='s' Entonces
				Si in<18.49 Entonces
					Escribir 'BAJO PESO: '
					Escribir '1. Disminuye el consumo de líquidos antes de las comidas para evitar una rápida sensación de llenura'
					Escribir '2. Consume alimentos con alta densidad calórica como: helados, malteadas, coladas y caspiroletas.'
					Escribir '3. Si estás recibiendo un complemento nutricional, debes consumirlo mínimo tres veces al día.'
				SiNo
					Si in>=25 Entonces
						Escribir 'EXCESO DE PESO'
						Escribir '1. Limitar el consumo de alimentos que sean ricos en azúcares y grasas.'
						Escribir '2. Consume mas fruta y verdura, así como legumbres, cereales integrales y frutos secos.'
						Escribir '3. Realizar actividad física frecuente mínimo de 3 veces a la semana'
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir '--------------------------------------------------'
		Escribir 'Desea calcular otro IMC (s/n)'
		Leer r
		i <- i+1
		in <- 0
		Borrar Pantalla
	Hasta Que r='n'
	Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
	Escribir ('        GRACIAS POR USAR LA CALCULADORA IMC         ')
	Escribir ('°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,')
FinProceso
