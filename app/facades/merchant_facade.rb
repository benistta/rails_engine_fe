class MerchantFacade
  class << self
    def all_merchants
      json = MerchantService.merchants
      # require "pry"; binding.pry
      json[:data].map do |merchant|
        Merchant.new(merchant)
        # Merchant.new(json[:data])
        # require "pry"; binding.pry
       end
     end

      def merchant(id)
        MerchantService.one_merchant(id)[:data]
        # require "pry"; binding.pry
      end

      def merchant_items(merchant_id)
        json = MerchantService.get_items(merchant_id)
          # require "pry"; binding.pry
          json[:data].map do |item|
            Item.new(item)
        end
       end
     end
    end
