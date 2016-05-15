# Inheritance Based version
# class SuperHero
#   attr_reader :public_identity
#
#   def initialize(public_identity, secret_identity)
#     @public_identity = public_identity
#     @secret_identity = secret_identity
#   end
#
#   def species
#     "Human"
#   end
#
#   def home
#     "Earth"
#   end
#
#   def fans_per_thousand
#     500
#   end
#
#   def powers
#     "Super human"
#   end
#
#   def weakness
#     "Chocolate"
#   end
#
#   def backstory
#     "Trying to save the world"
#   end
#
#   def speed_in_mph
#     60
#   end
#
#   def health
#     100
#   end
#
#   def psychic?
#     false
#   end
#
#   private
#   attr_reader :secret_identity
# end
#
# class Speedster < SuperHero
#   def speed_in_mph
#     super*1000
#   end
# end
#
# class Brawler < SuperHero
#   def health
#     super*20
#   end
# end
#
# class Detective < SuperHero
#   def backstory
#     "#{super} one night at a time"
#   end
#
#   def powers
#     "#{super} of perception"
#   end
#
#   def weakness
#     "Luke Bayne"
#   end
#
#   def speed_in_mph
#     super/6
#   end
# end
#
# class Demigod < SuperHero
#   def home
#     "Cosmic Plane"
#   end
# end
#
# class JackOfAllTrades < SuperHero
#   def species
#     "Alien"
#   end
#
#   def home
#     "Venus"
#   end
#
#   def psychic?
#     true
#   end
# end
#
# class WaterBased < SuperHero
#
#   def home
#     "#{super}'s Oceans"
#   end
#
#   def fans_per_thousand
#     super/100
#   end
#
#   def psychic?
#      true
#   end
# end


# Module Based version
module SuperHuman

  def initialize(public_identity, secret_identity)
      @public_identity = public_identity
      @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    "Super human"
  end

  def weakness
    "Chocolate"
  end

  def backstory
    "Trying to save the world"
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end
end

class SuperHero
  include SuperHuman
end

class Speedster
  include SuperHuman

  def speed_in_mph
    super*1000
  end
end

class Brawler
  include SuperHuman

  def health
    super*20
  end
end

class Detective
  include SuperHuman

  def backstory
    "#{super} one night at a time"
  end

  def powers
    "#{super} of perception"
  end

  def weakness
    "Luke Bayne"
  end

  def speed_in_mph
    super/6
  end
end

class Demigod
  include SuperHuman

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades
  include SuperHuman

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased
  include SuperHuman

  def home
    "#{super}'s Oceans"
  end

  def fans_per_thousand
    super/100
  end

  def psychic?
     true
  end
end
