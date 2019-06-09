class Package
  attr_reader :weight, :shipping_type

  def initialize(height:, length:, width:, weight:, shipping_type:)
    @height = height
    @length = length
    @width = width
    @weight = weight
    @shipping_type = shipping_type
  end

  def volume
    length * width * height
  end

  private

  attr_accessor :height, :length, :width
end
