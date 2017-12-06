require "./lib/war.rb"

describe "War" do
	it "Inicio de juego" do
		juego= War.new
		juego.Mezclar
		juego.Repartir
		juego.Resultado.should == "Ok"
	end

	it "Turno A" do
		juego= War.new
		juego.Mezclar
		juego.Repartir

		juego.TurnoA "6R"
		juego.Resultado.should == "6R"
	end

	it "Turno B" do
		juego= War.new
		juego.Mezclar
		juego.Repartir

		juego.TurnoB 7
		juego.Resultado.should == "7"
	end

	it "Comparar Gana A" do
		juego= War.new
		juego.TurnoA 7
		juego.TurnoB 3
		juego.Comparar
		juego.Resultado.should == "Ganador A"
	end

	it "Comparar Gana B" do
		juego= War.new
		juego.TurnoA 2
		juego.TurnoB 8
		juego.Comparar
		juego.Resultado.should == "Ganador B"

	end

	it "Comparar Empate" do
		juego= War.new
		juego.TurnoA 4
		juego.TurnoB 4
		juego.Comparar
		juego.Resultado.should == "Empate"
	end

	it "Guerra" do
		juego= War.new
		juego.TurnoA 5
		juego.TurnoB 5
		juego.Comparar
		juego.TurnoA 7
		juego.TurnoB 6
		juego.Comparar
		juego.Resultado.should == "Ganador A"
	end

	it "Mezclar" do
		juego = War.new
		juego.Mezclar
		juego.Resultado.should == "Mezclado"
	end

	it "Repartir" do
		juego = War.new
		juego.Mezclar
		juego.Repartir
		juego.Resultado.should == "Ok"
	end		
end
