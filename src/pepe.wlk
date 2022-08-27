import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	method categoria(unaCategoria){categoria = unaCategoria}
	method bonoPresentismo(bono){bonoPresentismo = bono}
	method bonoResultado(bono){bonoResultado = bono}
	method cantidadDeFaltas(cantidad){cantidadDeFaltas = cantidad}
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto()
			 + bonoPresentismo.monto(self)
			 + bonoResultado.monto(self)
			 
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
