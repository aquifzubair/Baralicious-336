require 'mysql2'
require './models/bar.rb'
require './models/drinker.rb'
require './models/friendship.rb'
require './models/beer.rb'
require './models/sell.rb'
require './models/like.rb'
require './models/frequent.rb'
require './models/transaction.rb'

$client = Mysql2::Client.new(host: "localhost", username: "csuser", password: "c0rnd0gs")
$client.select_db "beer"

def link_for object
  case object.class
    when "Beer"
      return "/beers/#{object.name}"
    when "Drinker"
      return "/drinkers/#{object.name}"
    when "Bar"
      return "/bars/#{object.name}"
  end
end
