import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	var property peso = 100
	var property tieneSed = false
	
	
	method comer(kilos) {
		if (self.tieneHambre()){
		peso = peso + (kilos / 2)
		tieneSed = true
		}
		else{
			self.error("no tengo hambre")
		}
	}
	
	method beber(){
		peso = (peso - 1).max(0)
		tieneSed = false
	}
	
	method tieneHambre(){
		return peso < 200 
		}	
	
		
	method pierdePeso(){
		if (self.peso()==50){
			self.error("no puedo caminar")
		}	
		peso = (peso * 0.95).max(50)
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
	
	method tieneHambre(){
		return vecesComio % 2 == 0
		
	}
	method pierdePeso(){
		if (self.peso()==50){
			self.error("no puedo caminar")
		}	
	}
}

class Comedor {
	var property position = game.at(12,10)
	const property image = "comedero.gif"
}