import matrix.*

object nave {
    const pasajeros = []
    var property esElegido = neo

    method agregarPasajero(pasajero){
        pasajeros.add(pasajero)
    }
    method cantidadDePasajeros(){
        return pasajeros.size()
    }

    method pasajeroDeMAyorVitalidad(){
        return pasajeros.max({p=> p.vitalidad()})
    }

    method estaEquilibradaEnVitalidad(){
        return pasajeros.all({p=> p.vitalidad()*2 < p.vitalidad()})
    }

    method estaElElegido(){
        return pasajeros.any({p=> p.esElegido()})
    }

    method choca(){
        pasajeros.salta()
    }

    method noSonElElegido(){
        return pasajeros.filter({p=> p != esElegido})
    }
    method acelera() {
        pasajeros.forEach({p=> p.salta()})
    }
}