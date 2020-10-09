# #!/usr/bin/env ruby
# require 'nokogiri'
# require 'open-uri'
# require 'json'
 
# url = "https://plants.sc.egov.usda.gov/java/AdvancedSearchServlet"


#     plant_data = Nokogiri::HTML(URI.open(url))
#     # lecture_content = sinatra_lesson.data_hash.css(".text-block")
#     # children_elements = lecture_content.children
#     # puts sinatra_lesson.data_hash.title

#    binding.pry

5.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "pass")
end



Plant.create(species: 'Abutilon hybridum', name: 'Flowering Maple', light: 1, temperature: 1, humidity: 2, water: 2, soil: 1, user_id: rand(4)+1)
Plant.create(species: 'Acalypha hispida', name: 'Chenile Plant', light: 1, temperature: 2, humidity: 2, water: 2, soil: 1, user_id: 3)
Plant.create(species: 'Achimenes hybrids', name: 'Magic Flower', light: 2, temperature: 2, humidity: 2, water: 1, soil: 7, user_id: 2)
Plant.create(species: 'Acorus calamus', name: 'Sweet Flag', light: 2.5, temperature: 2, humidity: 2, water: 1, soil: 2, user_id: 2)
Plant.create(species: 'Acorus gramineus', name: 'Miniature Sweet Flag', light: 2.5, temperature: 2, humidity: 2, water: 1, soil: 2, user_id: 5)
Plant.create(species: 'Adiantum raddianum', name: 'Maidenhair Fern', light: 2.5, temperature: 2, humidity: 1, water: 1, soil: 7, user_id: 4)
Plant.create(species: 'Adromischus cristatus', name: 'Crinkle-Leaf Plant', light: 2.5, temperature: 2, humidity: 2, water: 2, soil: 5, user_id: 1)
Plant.create(species: 'Adromischus festivus', name: 'Plover Eggs', light: 2.5, temperature: 2, humidity: 2, water: 2, soil: 5, user_id: 1)
Plant.create(species: 'Aechmea fasciata', name: 'Silver Vase', light: 2.5, temperature: 2, humidity: 2, water: 2, soil: 3, user_id: rand(4)+1)
Plant.create(species: 'Aechmea miniata ‘Discolor’', name: 'Purplish Coral Berry', light: 2.5, temperature: 2, humidity: 2, water: 2, soil: 3, user_id: rand(4)+1)
Plant.create(species: 'Aechmea ‘Royal Wine’', name: 'Royal Wine Bromeliad', light: 2.5, temperature: 2, humidity: 2, water: 1, soil: 3, user_id: rand(4)+1)
Plant.create(species: 'Aeschynanthus marmoratus', name: 'Zebra Basket Vine', light: 2, temperature: 2, humidity: 2, water: 1, soil: 7, user_id: rand(4)+1)
Plant.create(species: 'Aeschynanthus pulcher', name: 'Lipstick Vine', light: 2, temperature: 2, humidity: 2, water: 1, soil: 7, user_id: rand(4)+1)
Plant.create(species: 'Agave Americana ‘Marginata’', name: 'Variegated Century Plant', light: 1, temperature: 2, humidity: 3, water: 3, soil: 5, user_id: rand(4)+1)
Plant.create(species: 'Agave victoriae-reginae', name: 'Queen Agave', light: 1, temperature: 2, humidity: 2, water: 2, soil: 5, user_id: rand(4)+1)
Plant.create(species: 'Aglaonema modestum', name: 'Chinese Evergreen', light: 3.5, temperature: 2, humidity: 2, water: 2, soil: 2, user_id: rand(4)+1)
Plant.create(species: 'Aglaonema ‘Silver King’', name: 'Silver King', light: 3.5, temperature: 2, humidity: 2, water: 2, soil: 2, user_id: rand(4)+1)
Plant.create(species: 'Aglaonema ‘Silver Queen’', name: 'Silver Queen', light: 3.5, temperature: 2, humidity: 2, water: 2, soil: 2, user_id: rand(4)+1)
Plant.create(species: 'Allamanda cathartica', name: 'Allamanda', light: 1, temperature: 2, humidity: 1.5, water: 2, soil: 1, user_id: rand(4)+1)
Plant.create(species: 'Alloplectus nummularia', name: 'Miniature Pouch Flower', light: 2.5, temperature: 2, humidity: 1.5, water: 1, soil: 7, user_id: rand(4)+1)
Plant.create(species: 'Aloe aborescens', name: 'Candelabra Plant', light: 1, temperature: 3, humidity: 3, water: 3, soil: 5, user_id: rand(4)+1)
Plant.create(species: 'Aloe barbadensis', name: 'Medicine Plant', light: 1, temperature: 3, humidity: 3, water: 3, soil: 5, user_id: rand(4)+1)
Plant.create(species: 'Aloe brevifolia', name: 'Brevifolia Aloe', light: 1, temperature: 3, humidity: 3, water: 3, soil: 5, user_id: rand(4)+1)