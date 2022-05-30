# frozen_string_literal: true
require 'uri'
require 'net/http'
class HomeController < ApplicationController
  def index
    
    url = "https://api.openweathermap.org/data/2.5/weather?lat=25.77748&lon=-100.18331&units=metric&appid=9ec69f380e58f9bea96de06552313721"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end