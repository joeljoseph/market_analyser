class Currency
  include Mongoid::Document
  field :code, type: String
  field :symbol, type: String
  field :digital_code, type: String
  field :name, type: String
  field :country, type: String
  field :exchange_rate, type: Float
  field :exchange_rate_base, type: String, default: "USD"
  field :exchange_rate_updated_at, type: Time

end
