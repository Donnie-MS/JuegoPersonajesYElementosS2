import elementos.*


object luisa{
    var personajeActivo = null
    method aparece(unElemento) {
        personajeActivo.encontrar(unElemento)
    }
    method asignarPersonaje(unPersonaje) {
        personajeActivo = unPersonaje
    }
}

//Personajes
object floki{
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
armaActual.registrarUso()
        }
    }
}

object mario {
    var valorRecolectadoActual = 0
    var ultimoElemEncontrado = null
    method esFeliz() {
        return valorRecolectadoActual >= 50
            or ultimoElemEncontrado.altura() >= 10
    }
    method recibirValor(unElemento) {
        valorRecolectadoActual = valorRecolectadoActual + unElemento.otorgarValor()
    }
    method clase() {
        return trabajador
    }
    method trabajarEn(unElemento) {
        unElemento.recibirTrabajo()
    }
    method encontrar(unElemento) {
        ultimoElemEncontrado= unElemento
        self.recibirValor(unElemento)
        self.trabajarEn(unElemento)
    }
    method cambiarValorRecolectado(unValor) {
        valorRecolectadoActual = unValor
    }
}
//armas
object ballesta {
    var flechasActuales = 10
    method recargarArma() {
        flechasActuales = 10
    }
    method registrarUso() {
        if(self.estaCargada()) {
            flechasActuales= flechasActuales - 1
        }
    }
    method flechas() {
        return flechasActuales 
    }
    method estaCargada() {
        return flechasActuales > 0
    }
    method potencia() {
        return 4
    }
}

object jabalina {
    var flechasActuales = 1
    method recargarArma() {
        flechasActuales = 1
    }
    method potencia() {
        return 30
    }
    method estaCargada() {
        return flechasActuales > 0
    }
    method flechas() {
        return flechasActuales 
    }
    method registrarUso () {
        if (self.estaCargada()) {
            flechasActuales = flechasActuales - 1
        }
    }
}

// Clases
object guerrero {
  
}

object trabajador {
  
}
