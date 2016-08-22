require 'minitest/autorun'
require './exchange'
require './rate_provider'
require './usd_monitor'

class Object
  private

  def loop
    yield
  end
end

class EurMonitor
end

describe Exchange do
  let(:provider) { RateProvider.new }
  let(:exchange) { Exchange.new(provider) }

  describe 'with valid monitor' do
    let(:monitor) { UsdMonitor.new }

    before { exchange.add_observer(monitor) }

    it 'should provide rate information' do
      provider.stub :fetch, { usd: 63 } do
        # Set console output to out variable
        out, err = capture_io do
          exchange.run
        end
        out.must_equal "USD: 63\n"
      end
    end
  end

  describe 'with invalid monitor' do
    let(:monitor) { EurMonitor.new }

    it 'should raise an error' do
      exception = proc { exchange.add_observer(monitor) }.must_raise Exception
      exception.message.must_equal 'Observer should implement method update'
    end
  end
end
