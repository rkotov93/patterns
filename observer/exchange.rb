require './observable'

class Exchange
  include Observable

  def initialize(provider)
    @provider = provider
  end

  def run
    last_rate = nil
    loop do
      current_rate = @provider.fetch
      if current_rate != last_rate
        change
        last_rate = current_rate
      end
      notify_observers(current_rate)
    end
  end
end
