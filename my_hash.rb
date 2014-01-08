location = Hash.new
location[:city] = "Cambridge"
location[:state] = "MA"
location[:street_address] = "101 Main St"

puts "location is #{location}"

# Preferred hash literal syntax
location = {:city => 'Cambridge', :state => 'MA', :street_address => '101 Main St'}
puts "location is #{location}"

# Methods

# Hash#keys
puts location.keys[0].class # Keys returns array of keys (symbols here)
puts location.keys.join(', ')

# Hash#values
puts location.values.class
puts location.values.join(' : ')

location.each do |k, v|
  puts "k/v = #{k}/#{v}"
end

x = {}
puts x.empty?
puts location.empty?

# Hash#include?(key)
puts location.include?(:city)
puts location.include?(:xxx)

puts location.value?('Cambridge')
puts location.value?('asdf')

location[:zip_code] = '01450'
location.merge({ city: 'Groton', state: 'Conn'})
puts location # location unchanged
location.merge!({city: 'Groton', state: 'Conn'})
puts location

# Takes name (string) and hash args, merges hash and creates
# hash from name and merges that
def my_location(name, current_location_hash)
  { city: 'Groton', state: 'MA', street_address:
    '1 Main St' }.merge(current_location_hash).merge(name: name)
end

puts my_location('tom', city: 'East Cambridge') # Don't need curly
# braces if hash is last argument
# puts my_location('tom') # Errors because no hash

# VERY common options hash pattern
def my_location_2(name, options = {})
  { city: 'Groton', state: 'MA', street_address:
    '1 Main St' }.merge(options).merge(name: name)
end

puts my_location_2('tom') # Now can call without hash
puts my_location_2('tom', zip_code: '08945') # 2nd arg passed as hash

names = {tom: 'Jones', fred: 'Smith', alice: 'Jones'}
puts names.find{ |k,v| v == 'Jones'}.join(', ') # Find first
puts names.select{ |k,v| v == 'Jones'} # Find all

puts names.find_all{ |k,v| v == 'Jones'}.inspect # 2D Array
