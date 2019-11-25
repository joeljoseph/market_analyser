require 'nokogiri'
require 'open-uri'

namespace :price_of_commodity do

  def current_year
    Date.today.year
  end

  def current_month
    Date::MONTHNAMES[Date.today.month].downcase
  end

  def current_month_and_year(month, year)
  	month == current_month && year == current_year
  end

  def load_resource(source, month=nil, year=nil)
  	puts year, month
  	Nokogiri::HTML(open(source % [month, year]))
  end

  def parse_resource(resource)
    #('div#content_area div#content_left table tr td')
    #currnet month - daily - ('div#content_area div#content_left table:nth-of-type(5) tr td')
    #from 2019 - till last month - ('div#content_area div#content_left table:nth-of-type(4) tr td')
  	t = resource.css('div#content_area div#content_left table:nth-of-type(5) tr td')
    binding.pry
			                     t.select {|td|  td.content.to_s if (td.content.present? && !(td.content =~ /date|price|previous|next/i))}.
			                     map(&:content).each_slice(2).to_h
  end

  def create_commodity_record(hash_of_date_and_price)
  	hash_of_date_and_price.each do |date, price|
  		price = price.split(" ")[1].gsub(/[^\d\.]/, '') if price.to_i.zero?
  		date_count_in_hash = hash_of_date_and_price
			print "Date:#{date}, Price: #{price}, DateCount: #{date_count_in_hash} \n"
			Commodity.where(date: date, name: "Gold").first_or_create!({ name: "Gold", category_id: Category.metal, price: price })
		end
  end

  desc "To scrape price of commodity"
  #load prices for a particular year to current day
  task gold: :environment do
    today  = Date.today
  	months = Date::MONTHNAMES.compact.map {|m| m.downcase}
		years  = (2019..today.year).to_a
		source = "https://www.keralagold.com/daily-gold-prices-%s-%s.htm"
		years.each do |year|
		  months.each do |month|
		  	begin	
			  	source = "https://www.keralagold.com/daily-gold-prices.htm" if current_month_and_year(month, year)
					doc = load_resource(source, month, year)	
					date_and_price = parse_resource(doc)
					create_commodity_record(date_and_price)
					break if current_month_and_year(month, year)
				rescue OpenURI::HTTPError => e
					if e.message == '404 Not Found'
				  puts "Page Not found for #{month}, #{year}"
	    		  next
					else
					  raise e
					end
				end
	  	end
		end
	end

 desc "To scrape price of commodity daily"
	#load prices for today
	task gold_daily: :environment do
		begin	
			puts "Initating daily fetch"
			today  = Date.today
			source = "https://www.keralagold.com/daily-gold-prices.htm"
			doc = load_resource(source)
			date_and_price = parse_resource(doc)	
			create_commodity_record(date_and_price) 
		rescue OpenURI::HTTPError => e
			if e.message == '404 Not Found'
			  puts "Page Not found"
			else
			  raise e
		  end
	  end
	end

end


