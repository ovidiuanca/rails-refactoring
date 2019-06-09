class NormalShippingCost
  NORMAL_CONVERSION_FACTOR = 6.67
  NORMAL_RATE = 2.75

  def initialize(package)
    @package = package
  end

  def calculate
    cost = package.volume * (package.weight / NORMAL_CONVERSION_FACTOR) * NORMAL_RATE
    cost.round(2)
  end

  private

  attr_accessor :package
end
