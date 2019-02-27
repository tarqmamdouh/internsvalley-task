class Brand
  ELSE_CASE = -1
  RATINGS = {
    'high' => 1.1, 'low' => 0.9, 'else' => 1
  }.freeze

  def initialize(rate)
    @rate = rate
  end

  def rating
    RATINGS[@rate] || ELSE_CASE
  end
end
