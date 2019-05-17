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

class Gallina {
	var property position = game.at(3,6)
	const property image = "gallina.gif"
	var property peso = 4
	var property vecesComio = 0
	var property tieneSed = false
	
	method comer(kilo){
		vecesComio = vecesComio + 1
		if (vecesComio == 2 || vecesComio == 5){
			 tieneSed = true
		}
		else{
		 	tieneSed = false
		}
	}
}

class Comedor {
	var property position = game.at(7,10)
	const property image = "comedor.gif"
}