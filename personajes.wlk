object luisa {
    var personajeActual = floki
}

//Personajes
object floki {
    var armaActual = ballesta
    method arma() {
        return armaActual
    }
    method cambiarArmaA(unArma) {
        armaActual = unArma
    }
    method clase() {
        return guerrero
    }
    method encontrar(unElemento) {
        if (self.arma().estaCargada()) {
            unElemento.recibirAtaque(self.arma().potencia())
ballesta.usarArma()
        }
    }
}

object mario {
    method clase() {
        return trabajador
    }
    method encontrar(unElemento) {
        
    }
}
//armas
object ballesta {
    var flechasActuales = 10
    method recargarArma() {
        flechasActuales = 10
    }
    method usarArma() {
        flechasActuales = flechasActuales - 1
    }
    method flechas() {
        return flechasActuales 
    }
    method estaCargada() {
        if (flechasActuales > 0) {
            return true
        }
    }
    method potencia() {
        return 4
    }
}

object jabalina {

}

// Clases
object guerrero {
  
}

object trabajador {
  
}

/*
    method encontrar(elemento) {
        if (arma.estaCarga()) {
            elemento.recibirAtaque(arma.potenciaDeAtaque())
            arma.registrarUso()
        }
*/