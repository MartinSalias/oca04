require 'sinatra'
require './lib/war.rb'

get '/' do
    @@cartas = [0,0]
    @cartasA = @@cartas[0]
    @cartasB = @@cartas[1]
    erb :War
end

post '/JugadorA' do
    # llamar al metodo que corrresponde a apretar el boton
    @cartasA = @@cartas[0]
    @cartasB = @@cartas[1]
    erb :War
end

post '/JugadorB' do
    @cartasA = @@cartas[0]
    @cartasB = @@cartas[1]
    erb :War
end
