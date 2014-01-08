:mysymbol
:"mysymbol"
"mysymbol".to_sym

puts "symbol is #{:mysymbol.inspect}"

puts "true has object id of #{true.object_id}"
puts "78 has object id of #{78.object_id}"
puts "7 has object id of #{7.object_id}"
puts "The string 'hello' has object id of #{'hello'.object_id}"

a1 = ["one", "two", "three"]
a2 = %w{one two three}

# Same string but different ids
puts "#{a1[0]} has object id: #{a1[0].object_id}"
puts "#{a2[0]} has object id: #{a2[0].object_id}"

3.times do
  puts "hello".object_id # Different each time
end

# Same symbol same object ids
3.times do
  puts :hello.object_id
end
