object bicicleta{

    method peso(){
        return 5
    }
}

object camion{

    var  cantidadAcoplados = 1

    method cantidadDeAcoplados(unValor){
        cantidadAcoplados = unValor
    }
    
    method peso(){
        return cantidadAcoplados * 500
    }
}