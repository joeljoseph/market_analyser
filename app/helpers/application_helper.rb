module ApplicationHelper
	def number_to_currency_rs(amount)
		number_to_currency(amount, :unit => "₹", :separator => ".", :delimiter => ",") 
	end
end
