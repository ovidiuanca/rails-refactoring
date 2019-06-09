require 'spec_helper'

describe ShippingCalculator, '#calculate_cost' do
  let(:package) do
  end

  it 'determines the cost of normal shipping' do
    package = Package.new(
      height: 4.0,
      length: 3,
      weight: 50,
      width: 2.5,
      shipping_type: :normal
    )
    expected_cost = 618.44

    calculator =  ShippingCalculator.new(package)
    cost = calculator.calculate_cost

    expect(cost).to eq expected_cost
  end

  it 'determines the cost of express shipping' do
    package = Package.new(
      height: 4.0,
      length: 3,
      weight: 50,
      width: 2.5,
      shipping_type: :express
    )
    expected_cost = 1914.41

    calculator =  ShippingCalculator.new(package)
    cost = calculator.calculate_cost

    expect(cost).to eq expected_cost
  end
end
