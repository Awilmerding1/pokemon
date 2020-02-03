class Pokemon::PokemonController
  attr_accessor :current_pokemon

  def get_pokemon(input)
    response = Pokemon::API.new.get_pokemon(input)
    if response.code >= 200 && response.code <= 299
      self.current_pokemon = Pokemon::Pokemon.new(response)
      self.prompt_user
    else
      self.error
    end
  end

  def welcome
    puts "Welcome to the Pokemon App!"
    puts "Please enter a pokemon by name"
    input = gets.strip
    self.get_pokemon(input)
  end

  def prompt_user
    puts "Would you like to see the pokemon's name or abilities?"
    puts "Please enter 1 for name or 2 for abilities"
    input = gets.strip
    if input == "1"
      puts self.current_pokemon.name
      self.menu
    elsif input == "2"
      self.print_abilities
      self.menu
    else
      puts "invalid input"
      self.prompt_user
    end
  end


  def menu
    puts "To return to the main menu press 1"
    puts "To return to #{self.current_pokemon.name}'s menu press 2'"
    input = gets.strip
    if input == "1"
      self.welcome
    elsif input == "2"
      self.prompt_user
    else
      puts "invalid input"
      self.menu
    end
  end

  def error
    puts "There is no pokemon by that name!"
    self.welcome
  end

  def print_abilities
    self.current_pokemon.abilities.each_with_index do |ability, index|
      puts "#{index+1}. #{ability["ability"]["name"]}"
    end
  end

end
