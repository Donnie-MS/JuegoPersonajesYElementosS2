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
    method otorgarValor() {
        return defensaActual * 0.2
    }
    method recibirTrabajo() {
        defensaActual = defensaActual + 20
        if (defensaActual > 200) {
        defensaActual = 200
        }
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
    method recibirTrabajo() {
    }
    method otorgarValor() {
        return 15
    }
}

object tipa {
    var alturaEnMetrosActual = 8
    method alturaEnMetros() {
        return alturaEnMetrosActual
    }

    method recibirAtaque(unaPotencia) {
    }
    method otorgarValor() {
        return self.alturaEnMetros() * 2
    }
}