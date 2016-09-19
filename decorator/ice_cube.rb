require './decorator'

class IceCube
  include Decorator

  def description
    "#{object.description} with ice"
  end

  def cost
    object.cost + price
  end

  def price
    0.10
  end
end
