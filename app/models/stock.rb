class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
  
                                  endpoint: 'https://cloud.iexapis.com/v1')
                                  client.price(ticker_symbol)
end
end
