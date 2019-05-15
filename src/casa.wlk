import cosas.* 

object casaDePepeYJulian {
	const property cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any { c => c.esComida() }
	}
	
	method vieneDeEquiparse() {
		const ultima = cosas.last()
		return ultima.esElectrodomestico() or ultima.precio() > 5000
	}
	
	method esDerrochona() {
		return cosas.sum { c => c.precio() } >= 9000
	}
	
	method compraMasCara() {
		return cosas.max { c => c.precio() }
	}
	
	method queFaltaComprar(lista) {
		return lista.asSet().difference(cosas.asSet())
		
		return lista.filter { c => not cosas.contains(c) }
	}
	
	method faltaComida() {
		return cosas.count { c => c.esComida() } < 2
	}
}
