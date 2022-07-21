class Merchant
  attr_reader :id,
              :name
  def initialize(data)
    # require "pry"; binding.pry
    # @id = data[0][:id]
    # @name = data[0][:attributes][:name]
    @id = data[:id]
    @name = data[:attributes][:name]
    # require "pry"; binding.pry
  end
end
