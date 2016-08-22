class UsdMonitor
  def update(*args)
    @current_rate = args.first[:usd]
    display
  end

  def display
    puts "USD: #{@current_rate}"
  end
end
