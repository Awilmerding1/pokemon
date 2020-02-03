class Pokemon::API

  BASE = 'https://pokeapi.co/api/v2/'

  def get_pokemon(input)
    HTTParty.get(BASE + "pokemon/#{input}")
  end

end
