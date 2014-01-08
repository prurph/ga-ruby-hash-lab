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

# i) puts the most recent job's manager and phone number.
# ii) Change this managers name and puts it.
# iii) puts/print this persons street address.
# iv) Change the name of the oldest company alice worked for. And
# change her position to "Asst Donut Maker"
# v) print out alice's email address.
# vi) Create a method to show the number of days alice worked at each
# job.
