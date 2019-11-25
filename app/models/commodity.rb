class Commodity
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :date, type: Date

  paginates_per 50
  belongs_to :category
  default_scope   { order_by(date: :desc) }

  %w(gold silver).each do |commodity|
  	scope commodity, -> { where(name: "#{commodity.capitalize}") }
  end
  #scope :gold, -> { where(name: "Gold") }
 
end
