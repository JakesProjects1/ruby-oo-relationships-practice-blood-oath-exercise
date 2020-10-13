require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

j = Cult.new("J", "DC", 2020)
#puts j.name
j.slogan = "Jakes rule!"
justin = Follower.new("Justin", 24)
j.recruit_follower(justin)
#puts "Method counts followers"
#puts j.cult_population

justin_cults = justin.cults
loc = Cult.find_by_location("DC")
year = Cult.find_by_founding_year(2020)
age = Follower.of_a_certain_age(24)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits