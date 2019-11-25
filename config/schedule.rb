# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

def staging_tasks
	every 1.day, at: '02:59 pm' do
	  rake "price_of_commodity:gold_daily", :output => "#{path}/log/staging.log"
	end
end

def development_tasks
	every 1.day, at: '02:59 pm' do
	  rake "price_of_commodity:gold_daily", :output => "#{path}/log/development.log"
  end
end

def production_tasks
	every 1.day, at: '02:59 pm' do
	  rake "price_of_commodity:gold_daily", :output => "#{path}/log/production.log"
	end 
end


case @environment
	when 'production'
	  production_tasks
	when 'staging'
	  staging_tasks
	when 'development'
	  development_tasks
end
