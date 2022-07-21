class MerchantService
  class << self
    def merchants
    end_point = '/api/v1/merchants'
      response = connection.get(end_point) do |faraday|
      end
    JSON.parse(response.body, symbolize_names: true)
      # require "pry"; binding.pry
    end

    def one_merchant(id)
    end_point = "/api/v1/merchants/#{id}"
      response = connection.get(end_point) do |faraday|
      end
      JSON.parse(response.body, symbolize_names: true)
      # require "pry"; binding.pry
    end

    def get_items(merchant_id)
    end_point = "api/v1/merchants/#{merchant_id}/items"
      response = connection.get(end_point) do |faraday|
      end
      json = JSON.parse(response.body, symbolize_names: true)
      # require "pry"; binding.pry
    end

    def connection
      url = 'http://localhost:3000'
      Faraday.new(url: url)
    end
  end
end
