
class EmpresaServicio {
	var profesionales = []
	var honorarioReferencia = 0
	
	method honorarioReferencia(hon){ honorarioReferencia = hon }
	method contratarProfesional(prof){ profesionales.add(prof) }
	method profesionalesCaros() = profesionales.filter{ x => x.honorariosPorHora() > honorarioReferencia } 
	method universidadesFormadas() = profesionales.map{x => x.universidad() }.withoutDuplicates()
	method profesionalBarato() = profesionales.find{ 
			p => p.honorariosPorHora() == profesionales.map{x => x.honorariosPorHora()}.min()
	} 
	
	method provinciaCubierta(prov) {
		return profesionales.map{x => x.provinciasDondePuedeTrabajar()}.flatten().withoutDuplicates().any
		{
			p => p == prov
		}
	}
	
	method cuntosProfesionalesDeUniversidad(uni) = profesionales.count{ x => x.universidad() == uni }
	method profesionalPocoAtractivo(profesional){
		 return profesionales.filter{ x => x.provinciasDondePuedeTrabajar().any{ 
				p => self.hayProvinciaEnLista(profesional.provinciasDondePuedeTrabajar(), p)
			}}.any{ i => i.honorariosPorHora() < profesional.honorariosPorHora() }
	}
	
	method hayProvinciaEnLista(listaProvincia, provincia){
		return listaProvincia.any{ x => x == provincia }
	}
}
