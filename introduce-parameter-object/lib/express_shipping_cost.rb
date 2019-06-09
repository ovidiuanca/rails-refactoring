class ExpressShippingCost
  EXPRESS_CONVERSION_FACTOR = 3.33
  EXPRESS_RATE = 4.25

  def initialize(package)
    @package = package
  end

  def calculate
    cost = package.volume * (package.weight / EXPRESS_CONVERSION_FACTOR) * EXPRESS_RATE
    cost.round(2)
  end

  private

  attr_accessor :package
end
