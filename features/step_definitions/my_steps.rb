Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end


When(/^turno jugador "(.*?)" y saca un (\d+)$/) do |jugador, carta|

   if jugador == "A"
    @@cartas[0] = carta
   else
    @@cartas[1] = carta
   end

  click_button("jugador " + jugador)
end




