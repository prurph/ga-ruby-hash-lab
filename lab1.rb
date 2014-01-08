# Given this hash as an example of person's employment info.
require 'date'

alice_jones = {
  name: 'Alice Jones',
  dob: Date.new(1977,6, 23),
  address: {
    street: '502 Main St.',
    city: 'Newton',
    state: 'MA',
    zip_code: '01345'
  },
  employment_history: [
                       {
                         name: "Dunkin Donuts",
                         title: "Donut Maker",
                         contact: '978 453-5680',
                         manager: "Joe Conway",
                         start_date:  Date.new(2011,8,13),
                         end_date:  Date.new(2014,1, 3)
                       },
                       {
                         name: "Google",
                         title: "CEO",
                         contact: '413 958-8909',
                         manager: "God Himself",
                         start_date:  Date.new(2008,3,1),
                         end_date:  Date.new(2011,1, 9)
                       },

                      ]
}

# i) puts the most recent job's manager and phone number.
first_job = alice_jones[:employment_history][0]
puts "#{first_job[:manager]} #{first_job[:contact]}"
# ii) Change this managers name and puts it.
puts alice_jones[:employment_history].first[:manager] = "Mr. Donut"
# iii) puts/print this persons street address.
puts alice_jones[:address][:street]
# iv) Change the name of the oldest company alice worked for. And
# change her position to "Asst Donut Maker"
alice_jones[:employment_history][1][:name] = "The Donut Shop"
alice_jones[:employment_history].last[:title] = "Asst Donut Maker"
# v) print out alice's email address.
puts "#{alice_jones[:email].class} Alice has no email!?"
alice_jones[:email] = "alice.jones@gmail.com"
puts "Okay we gave her one: #{alice_jones[:email]}"
# vi) Create a method to show the number of days alice worked at each
# job.
def days_worked(employee)
  history = employee[:employment_history]
  history.each do |job|
    puts "At #{job[:name]}, #{employee[:name]} worked: #{(job[:end_date] - job[:start_date]).to_i}"
  end
end

days_worked(alice_jones)
