//elementos
object castillo {
    var defensaActual = 150
    method alturaEnMetros() {
        return 20
    }
    method recibirAtaque(unaPotencia) {
        defensaActual = defensaActual - unaPotencia
    }
    method defensa() {
        return defensaActual
    }
}

object aurora {
    var estadoActual = true
    method estado() {
        return estadoActual
    }
    method alturaEnMetros() {
        return 1
    }
    method recibirAtaque(unaPotencia) {
        if (unaPotencia >= 10) {
            estadoActual = false
        }
    }
}

object tipa {
    var alturaEnMetrosActual = 8
    method alturaEnMetros() {
        return alturaEnMetrosActual
    }
    method recibirAtaque(unaPotencia) {
    }
}