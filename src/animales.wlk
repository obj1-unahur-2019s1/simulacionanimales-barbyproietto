import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	
	var property peso = 200
	var property tieneSed = false
	
	method comer(kilos) {
		peso = peso + (kilos / 2)
		tieneSed = true
	}
	
	method beber(){
		peso = (peso - 1).max(0)
		tieneSed = false
	}
}


 /*cuando come, acumula cuántas veces fue a comer. No le importan los kilos, da lo mismo que coma 1 kilo o 20, 
 lo que se cuenta es cuántas veces comió.
 el peso es fijo, 4 kilos.
 tiene sed si comió exactamente 2 veces, o si comió exactamente 5 veces. Con cualquier otro valor, no tiene sed.*/




class Gallina {
	var property position = game.at(3,6)
	const property image = "gallina.gif"
	var property peso = 4
	var property vecesComio = 0
	var property tieneSed = true
	
	method comer(kilo){
		vecesComio = vecesComio + 1
		if (vecesComio == 2 || vecesComio == 5){
		}
		else{
			false
		}
	
		
	}
	
	
}

class Comedor {
	var property position = game.at(7,10)
	const property image = "comedor.gif"
}