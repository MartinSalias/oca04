Feature: Juego de Cartas War

Scenario: Inicio Juego
	Given voy al sitio
	Then veo "War Web"

Scenario: Turno jugador A
	Given voy al sitio
	When turno jugador "A" y saca un 9
	Then veo "Carta jugador A: 9"

Scenario: Turno jugador B
	Given voy al sitio
	When turno jugador "B" y saca un 10
	Then veo "Carta jugador B: 10"

Scenario: Turno jugador B
	Given voy al sitio
	When turno jugador "B" y saca un 4
	Then veo "Carta jugador B: 4"


