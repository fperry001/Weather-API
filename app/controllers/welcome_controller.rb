class WelcomeController < ApplicationController
  def test
  	response= HTTParty.get("http://api.wunderground.com/api/99ac60c8aad80eea/geolookup/conditions/q/CA/San_Francisco.json")

  	puts "---------------"
  	puts response
  	puts "---------------"




  @location = response['location']['city']
  @temp_f = response['current_observation']['temp_f']
  @temp_c = response['current_observation']['temp_c']
  @weather_icon = response['current_observation']['icon_url']
  @weather_words = response['current_observation']['weather'] 
  @forecast_link = response['current_observation']['forecast_url']
  @real_feel = response['current_observation']['feelslike_f']
  end

  def index
  end
end
