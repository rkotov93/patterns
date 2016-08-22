class RateProvider
  def fetch
    { usd: 60 + rand * 10 }
  end
end
