require './pricing_calculation.rb'

price_reference = 100
shipping_cost = 20
rate = 'low'
price_original = PricingCalculation.new(
  price_reference, shipping_cost, rate
)
price_original = price_original.calculate_price

puts price_original
