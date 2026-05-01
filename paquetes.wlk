import destinos.*
object paquete {
    var property destino = brooklyn
    var estaPago= false
    method puedeSerEntregado(unMensajero){

        return destino.dejaPasar(unMensajero)
               && estaPago

    }
    method registrarPago(){

        estaPago = true


    }
    method rechazarPago(){

        estaPago = false


    }
    method precio(){
        return 50
    }
    method estaPago(){
        return estaPago
    }
}
object paquetito{
    var property destino = brooklyn
    method puedeSerEntregado(unMensajero){

        return destino.dejaPasar(unMensajero)

    }
    method precio(){
        return 0
    }
    method estaPago(){
        return true
    }

}
object paqueton{
    var importeAbonado = 0
    const destinos = #{}
    method precio(){

        return destinos.size() * 100

    }
    method registrarPago(unValor){
        importeAbonado=(importeAbonado + unValor).min(self.precio())

    }

    method estaPago(){

        return importeAbonado == self.precio()

    }

}