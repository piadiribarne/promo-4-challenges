# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, filepath)
  # TODO: return the number most successfull movies max_year
	csv_options = {col_sep:','}
	movies = [] 
	CSV.foreach(filepath, csv_options) do |row|
		movies << {
			name: row[0],
			date: row[1].to_i,
			earnings: row[2].to_i
		}
	end 
	movies

	# sort by earnings
	sorted_movies = movies.select {|movie| movie[:date] < max_year }.sort_by { |movie| -movie[:earnings] }
	p sorted_movies.take(number)
	
end

p most_successfull