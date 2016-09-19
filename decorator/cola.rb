require './decorator'

class Cola
  include Decorator

  def description
    "#{object.description} with Cola"
  end

  def cost
    object.cost + price
  end

  def price
    1.37
  end
end
