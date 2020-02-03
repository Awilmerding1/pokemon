class Pokemon::Pokemon

  attr_accessor :name, :abilities, :moves

  @@all = []

  def initialize(attributes)
      attributes.each {|key, value|
        begin
          self.send(("#{key}="), value)
          @@all << self
        rescue NoMethodError

        end
        }
    end

  def abilities
    @abilities
  end

  def self.all
    @@all
  end

  def self.get_pokemon_by_name(name)
    self.all.detect do |pokemon|
      pokemon.name == name
    end
  end


end
