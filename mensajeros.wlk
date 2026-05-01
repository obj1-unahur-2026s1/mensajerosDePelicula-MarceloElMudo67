import vehiculos.*
object roberto{
    var property vehiculo=bicicleta
    var peso=90
    method cambiarPeso(nuevoPeso){
        peso=nuevoPeso
    }
    method pesoTotal(){

        return vehiculo.peso()+peso

    }
    method puedeLlamar(){

        return false

    }
}
object chuckNorris{
    method pesoTotal(){

        return 80

    }
    method puedeLlamar(){

        return true

    }
}

object neo{
    var  tieneCredito = true
    method cargarCredito(){

        tieneCredito=true

    }
    method agotarCredito(){

        tieneCredito=false

    }
    method pesoTotal(){

        return 0

    }
    method puedeLlamar(){

        return tieneCredito

    }
}