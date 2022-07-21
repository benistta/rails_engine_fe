class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @merchant_id = data[:attributes][:merchant_id]
    # require "pry"; binding.pry
  end
end
