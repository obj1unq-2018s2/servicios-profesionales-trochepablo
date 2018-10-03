import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return ["Entre Ríos", "Corrientes", "Santa Fe"] }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return [universidad.provinciaDeLaUniversidad()]} 
	
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provincias = []
	var honorarios
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return provincias }
	method provinciasDondePuedeTrabajar(prov) { provincias.add(prov) }
	
	method honorariosPorHora() { return honorarios }
	method honorariosPorHora(hono) { honorarios = hono }
}


