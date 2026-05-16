object neo {
    var energia = 100

    method vitalidad() = energia/ 10

    method salta() {
        energia = energia / 2
    }

    method esElegido()= true
}

object morfeo {
    var vitalidad = 8
    var estaDescansado = true

    method estaDescansado() = estaDescansado
    
    method estaCansado() = false

    method vitalidad() = vitalidad

    method salta() {
        vitalidad = 0.max(vitalidad - 1)
        estaDescansado = not estaDescansado
    }

    method esElegido()= false
}

object trinity {
    
    method vitalidad() = 0

    method salta() = null

    method esElegido()= false
}

