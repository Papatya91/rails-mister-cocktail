require 'json'
require 'open-uri'
url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"
Cocktail.delete_all if Rails.env.development?
cocktails = JSON.parse(open(url).read)
cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail["name"], glass: cocktail["glass"], preparation: cocktail["preparation"])
end


# cocktails = Cocktail.create([{ name: 'Malibu' }, { name: 'Caipirihna' }, { name: 'Moscow mule'},{ name: 'Vodka sour' }, { name: 'Gin tonic' }, { name: 'Vodka mix' }]);

