# Ruby Hashes, Very important Data Structure.

# A little bit like arrays where each index is NOT restricted to be an
# integer. Hashes are collections of key-value pairs.

# Each key AND value may be ANY object. But, typically key is a
# symbol.

######################################
# Creation
######################################

# Couple different ways to create a instance of a Hash, i.e. a hash.
location = Hash.new
location[:city] = 'Cambridge'
location[:state] = 'MA'
location[:street_address] = '101 Main St.'
puts "location is = #{location}"

# Better:
# Create a hash 'literal', same as above but more concise.
# This is using the 'hash rocket' => to associate keys and values.
location = { :city => 'Cambridge', :state => 'MA', :street_address => '101 Main St'}

# Notice how we are using symbols here, why?

# From the Ruby Style Guide,
# https://github.com/bbatsov/ruby-style-guide#syntax
# Prefer symbols instead of strings as hash keys
# Avoid the use of 'mutable' objects for key.

# Bad: (but common)
# the keys are mutable AND we'll create a new string
# instance/object for every key, even if the keys have the same value!
location = { "city" => 'Cambridge', "state" => 'MA', "street_address" => '101 Main St'}

# Better:
# now using symbols for keys
location = { :city => 'Cambridge', :state => 'MA', :street_address => '101 Main St'}

# Best:
# use the newer Ruby syntax for creating a Hash with keys that
# are ALL symbols.
# Newer syntax is 'syntatic sugar' introduced in Ruby 1.9
location = { city: 'Cambridge', state: 'MA', street_address: '101 Main St'}

puts "location is = #{location}"

############Exit Program #######################
#exit 

# Lots of opinions on newer hash syntax. Remember to use
# newer hash syntax ONLY when all keys are symbols. Which is a very
# typical case.


######################################
# Methods
# NOTE: Hash#keys idenitify a instance method of the Hash class.
######################################

# Hash#keys
# will show all the keys in a hash. 
puts "\nkeys are: " << location.keys.to_s

# Hash#values
# will show all the keys in a hash. 
puts "\nvalues are: #{location.values}"

# Hash#each
puts "\nkey values are:"
# Show me all the keys in a hash
location.each { |k,v| puts "key/value: #{k}/#{v}" }

# Hash#empty? (NOTE: ? mark at end of method means it returns a boolean)
puts "\nEmpty is empty?"
puts location.empty?

# Hash#include(key)?
puts "\nHas :city key"
puts location.include?(:city)

# Hash#delete
puts "\nDelete city key value pair"
location.delete(:city)
puts "location is #{location}"
location[:city] = "Cambridge" # put it back

# Hash.merge
# Combine/merge hashes
new_location = location.merge({zip_code: '01450'})
puts "\nNew location is #{new_location}"

# If a hash is used as a last argument to method the curly braces may
# be left out.
new_location = location.merge(zip_code: '01450')
puts "\nNew location is #{new_location}"

# Create a new fixed location, the city didn't match the zip above..
location_fixed = new_location.merge(city: 'Groton')
puts "\nFixed location is #{location_fixed}"

# Better:
# Hash#merge!
# we don't need to create a new variable, location_fixed.
new_location.merge!(city: 'Groton')
puts "\nNew location is #{new_location}"

# We are using the bang, '!', on the method name. This is a convention
# ruby uses to signal that we are changing the object in place.
# Whats the difference here?

# Hash#inject
# Can  be very handy to transform or build new hashes.
my_hash = {  a: 'foo', b: 'bar' }
my_hash_upcase = my_hash.inject({}) { |h, (k, v)| h[k.upcase] = v.upcase; h }

puts "\nmy_hash_upcase = #{my_hash_upcase}"

# create a new hash for a couple operations
names = { fred: 'jones', mary: 'tucker', alice: 'bezeel', tom: 'tucker'}
puts "\nWorking with a new names hash"
puts names

# Hash#find
puts "\nFind the FIRST entry with the value of 'tucker"
# returns an array of with one name.
puts names.find{ |k,v| v == 'tucker'}.join(',')

# Hash#select
puts "\nFind ALL the entries with a value of 'tucker"
# returns a hash all the names.
puts names.select{ |k,v| v == 'tucker'}

# Hash.sort
puts "\nSort the names hash"
puts names.sort


# Show the intersection of two hashes
# These should be added to the Hash class later!
def hash_intersection(h1,h2)
  intersection = { }
  h1.each do |k,v|
    intersection[k] = v if h2.keys.include?(k) && h2.values.include?(v) 
  end
  intersection
end

def hash_diff(h1,h2)
  merged = h1.merge(h2)
  diff = { }
  merged.each do |k,v|
    diff[k] = v if !h1.include?(k) || !h2.include?(k)
  end
  diff
end
a = { "a"=>1,"b"=>2,"z"=>77}
b = {"x"=>99,"y"=>88,"z"=>77}

puts "Intersection of #{a} and #{b} is #{hash_intersection(a,b)}"
puts "Difference of #{a} and #{b} is #{hash_diff(a,b)}"

# difference = a.keys - b.keys
# puts "Difference of #{a} and #{b} is #{difference}"

######################################
# Labs
######################################

# TODO: lab1.rb
# TODO: lab2.rb

# TODO: In Pry
# Create a location hash and look at all the methods using
# location.public_methods(false) and invokeeach of these methods on
# this location_hash.
# Then go to the ruby docs for each of these methods to understand
# them.
# Yell, LOUD!! when you don't understand a method AFTER reading the
# docs.




