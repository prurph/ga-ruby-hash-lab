# I've got a bunch of application info in the form shown below. I want
# to explore this info.

# Given this hash as an example of person's employment info.
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

# i) Create a employment check, employment_check(employment_history),
# method that will return a record, Ruby hash, that I will use do
# reference checks.
# The returned hash shoud have an entry (key/value pair) for the the
# person's name. And it should have an array of hashes where each hash
# will have an entry (key/value pair) for company name, manager, title
# and phone number

# contact info for a person.

# ii) Create a generate_employment_history(num_of_people) method that will generate and
# return an array of employment histories, same structure as above..
# Constraints:
# person names can be anything with > 4 characters and < 10 characters.
# DOB must be valid and reasonable, nobody born before 1910 or after 2000.
# city names must be constrained to 4 cities in Mass.
# state is always MA
# zip must be 5 digits 
# company name must be one of 5 companies you determine. Never work
# for the same company twice.
# job title must be one of 4 you determine.
# phone number must have the form [0-9]{3} [0-9]{3}-[0-9]{4}. The area
# code must never be 555 and the last four digits must have be less
# than 8117.
# employment history must be ordered by most recent jobs.
# start date must always be before the end date of the previous job,
# and not in the future.
# each job's start date must be after the previous jobs end date. 

# iii) Generate 43 of employment histories.

# iv) Create a method that will give me the number of applicant from
# each companies.o

# Extra: Mine some more data.
