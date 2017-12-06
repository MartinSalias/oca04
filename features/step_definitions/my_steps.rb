Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |arg1|
  "War Web" 
end

When(/^turno jugador "(.*?)"$/) do |arg1|
  click_button("jugador " + arg1)
end

Then(/^veo carta$/) do
  "carta"
end

When(/^evalúo cartas$/) do
 "Comparar"
end

Then(/^doy ganador$/) do
  "Ganador A"
end

