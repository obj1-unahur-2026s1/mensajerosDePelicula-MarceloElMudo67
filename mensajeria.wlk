import mensajeros.*
object mensajeria{

    const mensajeros=[]

    method contratarUnMensajero(unMensajero){

        mensajeros.add(unMensajero)

    }
    method despedirUnMensajero(unMensajero){

        mensajeros.remove(unMensajero)

    }

    method despedirATodos(){

        mensajeros.clear()

    }

    method esGrande(){

        return mensajeros.size() > 2

    }

    method elPrimerEmpleadoPuedeEntregar(unPaquete){

        return unPaquete.puedeSerEntregado(self.primerEmpleado())

    }

    method primerEmpleado(){

        return mensajeros.first()

    }

    method pesoUltimoMensajero(){

        return self.ultimoMensajero().pesoTotal()

    }

    method ultimoMensajero(){

        return mensajeros.last()

    }

    method pesoTotalDeTodosLosMensajeros(){

        return mensajeros.sum({m=>m.pesoTotal()}) 

    }

    method almenosUnMensajeroPuedeEntregar(unPaquete){

        return mensajeros.any({m=> unPaquete.puedeSerEntregado(m)})

    }

    method losQuePuedenLlevar(unPaquete){

        return mensajeros.filter({m=> unPaquete.puedeSerEntregado(m)})
    }
}