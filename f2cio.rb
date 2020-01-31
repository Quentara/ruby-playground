# frozen_string_literal: true

puts 'Welcome to the Fahrenheit2Celsius converter'

puts 'Reading Fahrenheit temperature value from file ...'
fahrenheit = File.read('temp_in.txt')

celsius = (fahrenheit.to_i - 32) * 5 / 9
print "#{fahrenheit}°F equals #{celsius}°C!"

puts 'Saving results to output file temp_out.txt ...'
new_file = File.new('temp_out.txt', 'w')
new_file.puts celsius
new_file.close
