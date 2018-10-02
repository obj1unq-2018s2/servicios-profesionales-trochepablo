import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{universidad.pronvinca()} }
	
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provincia
	var honorarios
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return provincia }
	method provinciasDondePuedeTrabajar(prov) { provincia = prov }
	
	method honorariosPorHora() { return honorarios }
	method honorariosPorHora(hono) { honorarios = hono }
}


