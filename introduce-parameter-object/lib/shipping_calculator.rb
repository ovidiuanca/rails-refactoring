class ShippingCalculator
  def initialize(package)
    @package = package
  end

  def calculate_cost
    shipping_cost.calculate
  end

  private

  attr_accessor :package

  def shipping_cost
    case package.shipping_type
    when :normal
      NormalShippingCost.new(package)
    when :express
      ExpressShippingCost.new(package)
    end
  end
end
