object tom {
    var energia = 50 

    method getEnergia() = energia 
    method velMax() =  5 + energia * 0.1

    method comer(unRaton) {
      energia = energia + 12 + unRaton.getPeso()
    }

    method correr(distancia) {
      energia =  energia - distancia * 0.5
    }

    method puedeCazar(unaDistancia) = unaDistancia/2 < energia

    method cazar(unaDistancia,unRaton) {
      if (self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
    
}

object jerry {
  var edad = 2

  method getPeso() = edad * 20
  method getEdad() = edad 

  method cumplirAnios() {
    edad += 1
  }
}

object nibbles {
   method getPeso() = 35
}

// Inventar otro ratón

object perez {
  method getPeso() = 30  
}