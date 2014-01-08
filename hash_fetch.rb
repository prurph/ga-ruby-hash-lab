# Hash#fetch

# Why use fetch?
# 1) To cause error where you initially get a non-existent key/entry.
# 2) To set a default value for an key/entry

# Hash thats used during authenticate, e.g. during login.
auth = {
  uid: 12345,
  info: {
    first_name: 'Tom',
    last_name: 'Dyer'
  },
  credentials: {
    token: 'myToken'
  }
}

# method used to validate email address.
def valid_email?(email)
  # TODO: need a better check here
  email.include?('@') && email.include?('.')
end

###########################################################
# 1) To error where you initially get a non-existent entry.
# The occurence of the error may be widely seperated from
# in code and in time from where the error is caught.
###########################################################
# What if I attempt to set an variable from a non-existent entry in
# the hash?
email_address = auth[:info][:email]

# Then much later possible in some far distant part of the program I
# want to use that variable.
valid = valid_email?(auth[:info][:email])

############Exit Program #######################
# comment out failing method above and move this down as you work thru
# this.
exit 


# Better:
# Use fetch as an Assertion.
# Fetch will raise an exception when trying to access a non-existant key
# MUCH better than if you cause an error where you access the key

# now a meaningful exception is raised if we try to access a missing key
email_address = auth[:info].fetch(:email) do
  raise "Invalid auth data (missing email). See https://whattodo..."
end

valid = valid_email?(auth[:info][:email])


###########################################################
# 2) To provide a good default when a key is missing.
###########################################################
# Good for providing default values
email_address = auth[:info].fetch(:email){ 'anonymous@example.com' }
puts valid_email?(email_address) ? "VALID EMAIL" : "INVALID VALID EMAIL"

# (Advanced) Generalized default blocks
# For lots of calls to fetch where accessing a missing key should all be handled the same way
default_proc = ->(key) do
  puts "#{key} not found, please enter it:"
  gets 
end

location = { }
city = location.fetch(:city, &default_proc)
puts "City is #{city}"


