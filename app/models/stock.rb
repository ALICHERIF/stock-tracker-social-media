class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'pk_bcc5fbc1ad98426ab7c9b7bd49b4e78d',secret_token: 'sk_afd7337f0def482989a18a4bb6b9733e',
                                  endpoint: 'https://cloud.iexapis.com/v1')
                                  client.price(ticker_symbol)
end
end
