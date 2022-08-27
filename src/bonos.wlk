import pepe.*

object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}

object bonoMontoFijo {
	method monto(empleado) = 200
}


object bonoPresentismoNormal {
	/*method monto(empleado){
		var monto = 0
		if (empleado.cantidadDeFaltas() == 0){
			monto = 2000
		}
		else if (empleado.cantidadDeFaltas() == 1){
			monto = 1000
		}
		return monto
	}
	*/ // DE LA FORMA HECHA ARRIBA ES UN CHOCLO AL PEDO DENTRO DE LAS FACILIDADES QUE OTORGA EL LENGUAJE DE WOLLOK 
	method monto(empleado) = if (empleado.cantidadDeFaltas() == 0) 2000
							 else if (empleado.cantidadDeFaltas() == 1) 1000
							 else 0
}
// agregar bonos ajuste y demagogico
object bonoPorPresentismoAjuste{
	method monto(empleado){
		return if(empleado.cantidadDeFaltas() == 0){100}
			   else {0}
	}
}

object bonoDemagogico{
	method monto(empleado) = if(empleado.sueldoNeto()<18000) 500 else 300
}

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

