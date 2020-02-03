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




end
