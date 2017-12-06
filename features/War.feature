Feature: Juego de Cartas War
Scenario: Inicio Juego
	Given voy al sitio
	Then veo "War Web"
Scenario: Turno jugador A
	Given voy al sitio
	When turno jugador "A"
	Then veo carta
Scenario: Turno jugador B
	Given voy al sitio
	When turno jugador "B"
	Then veo carta
Scenario: Resultado jugado
	Given voy al sitio
	When evalúo cartas
	Then doy ganador
