# Symbols


######################################
# Creation
######################################

# Are created by using the colon.
# :mysymbol OR :"mysymbol" OR "mysymbol".to_sym

:mysymbol
:"mysymbol"  # rarely used
"mysymbol".to_sym

######################################
# Object Unique Indentifiers
######################################

# Each object in ruby has a unique identifier, 'object_id'
puts "true has object_id of #{true.object_id}"
puts "453 has object_id of #{453.object_id}"
puts "453 has object_id of #{453.object_id}"
a1 = ['hello', 14]
a2 = ['hello', 14]
puts "['hello', 14] has an object_id of #{a1.object_id}"
puts "Another array instance with the same values ['hello', 14] has a different object_id of #{a2.object_id}"

############Exit Program #######################
exit 

puts "\nThree different instances of a String with the same value each have thier own object id"
puts "mebee".object_id  # every object in Ruby get a uniqie object id when it's created.
puts "mebee".object_id
puts "mebee".object_id  # lookie, all the ids are different

puts "\nThe same symbol ALWAYS have the same object_id "
puts :mebee.object_id
puts :mebee.object_id
puts :mebee.object_id  # they all have the same object id because we can ONLY create one symbol value!

######################################
# Notes: 
######################################

# Symbols are immutable strings. And they save memory by not creating
# new object for each value.

# Symbols work well when we want to refer to the same thing throughout
# a program. For example, if we had to use the string "foo" in many
# places in the program it would create an object for each time we
# used the string "foo".

# Symbols work well as Hash Keys.


