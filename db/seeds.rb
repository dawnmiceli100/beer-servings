# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Places
greenwoods = Place.create(name: "Greenwood's Grille & Ale House")

# Breweries
bbc = Brewery.create(name: "BBC")
two_roads = Brewery.create(name: "Two Roads")
lawsons = Brewery.create(name: "Lawson's Finest Liquids")
otter_creek = Brewery.create(name: "Otter Creek")
black_hog = Brewery.create(name: "Black Hog")
cigar_city = Brewery.create(name: "Cigar City")
maine = Brewery.create(name: "Maine Beer Company")

# Beers
bbc_octoberfest = Beer.create(name: "Octoberfest", abv: 6.8, brewery: bbc)
roadsmarys_baby = Beer.create(name: "Roadsmary's Baby", abv: 6.8, brewery: two_roads)
sip_of_sunshine = Beer.create(name: "Sip of Sunshine", abv: 8.0, brewery: lawsons)
citra_mantra = Beer.create(name: "Citra Mantra", abv: 5.75, brewery: otter_creek)
ginga_ninja = Beer.create(name: "Ginga Ninja", abv: 6.5, brewery: black_hog)
jai_lai = Beer.create(name: "Jai Lai", abv: 6.8, brewery: cigar_city)
mo = Beer.create(name: "MO", abv: 6.0, brewery: maine)
lunch = Beer.create(name: "Lunch", abv: 7.0, brewery: maine)

# Menu Items
item1 = MenuItem.create(tap_number: 1, place: greenwoods, beer: bbc_octoberfest)
item2 = MenuItem.create(tap_number: 2, place: greenwoods, beer: roadsmarys_baby)
item3 = MenuItem.create(tap_number: 3, place: greenwoods, beer: lunch)
item4 = MenuItem.create(tap_number: 4, place: greenwoods, beer: ginga_ninja)

# Servings
Serving.create(size: "12oz. Draft", price: 5.00, menu_item: item1)
Serving.create(size: "16oz. Draft", price: 6.00, menu_item: item1)
Serving.create(size: "12oz. Draft", price: 6.00, menu_item: item2)
Serving.create(size: "16oz. Draft", price: 7.00, menu_item: item2)
Serving.create(size: "12oz. Draft", price: 6.00, menu_item: item3)
Serving.create(size: "16oz. Draft", price: 7.00, menu_item: item3)
Serving.create(size: "12oz. Draft", price: 5.00, menu_item: item4)
Serving.create(size: "16oz. Draft", price: 6.00, menu_item: item4)
