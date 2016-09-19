require 'minitest/autorun'
require 'minitest/stub_any_instance'
require './whiskey'
require './cola'
require './ice_cube'

describe 'Whiskey cola' do
  let(:whiskey) { Whiskey.new }
  let(:whiskey_cola) { Cola.new(whiskey) }

  it 'should have right cost' do
    Cola.stub_any_instance(:price, 1.37) do
      whiskey_cola.cost.must_equal whiskey.price + 1.37
    end
  end
end

describe 'Whiskey cola with ice' do
  let(:whiskey) { Whiskey.new }
  let(:whiskey_cola_with_ice) { IceCube.new(Cola.new(whiskey)) }

  it 'should have right cost' do
    Cola.stub_any_instance(:price, 1.37) do
      IceCube.stub_any_instance(:price, 0.10) do
        whiskey_cola_with_ice.cost.must_equal whiskey.price + 1.37 + 0.10
      end
    end
  end
end
