class Category
  include Mongoid::Document
  field :name, type: String
  has_many :commodities

  def self.metal
  	where(name: "Metal").last.id
  end
end
