require './brand.rb'
require './product_database.rb'

class PricingCalculation
  def initialize(price_reference, shipping_cost, rate)
    @price_reference = price_reference
    @product_database = ProductDatabase.new(shipping_cost)
    @brand = Brand.new(rate)
  end

  PRICES = {
    '15' =>   0.75,
    '25' =>   0.775,
    '50' =>   0.8,
    '75' =>   0.825,
    '100' =>  0.85,
    '200' =>  0.875,
    '400' =>  0.9,
    '600' =>  0.925,
    'over' => 0.95
  }.freeze

  ELSE_CASE = -1

  def calculate_price
    price_value = getting_price_value
    price_original = calculate_total_price(price_value)
    price_original *= @brand.rating
  end

  private

  def getting_price_value
    price_index = PRICES.keys[0...-1].index do |price|
      price.to_i > @price_reference
    end || ELSE_CASE
  end

  def calculate_total_price(price_value)
    @price_reference - @product_database.shipping_cost * PRICES.values[price_value]
  end
end

