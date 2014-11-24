# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.create!(name: 'Web programer', description: " the Rails gods have given us a way of feeding default values easily and quickly to a fresh installation.", salary: "5000 $" , date_start: "2014-11-19 09:22:37",expires: 40 , job_type: "Full time")
Job.create!(name: 'PHP programer', description: " the PHP gods have given us a way of feeding default values easily and quickly to a fresh installation.", salary: "3000 $" , date_start: "2014-11-19 09:22:37",expires: 40 , job_type: "Full time", category_id: 1 ,company_id: 1)
Job.create!(name: 'Java programer', description: " the Java gods have given us a way of feeding default values easily and quickly to a fresh installation.", salary: "9000 $" , date_start: "2014-11-19 09:22:37",expires: 40 , job_type: "Full time", category_id: 2 ,company_id: 1)

j = Job.find(1)
j.update_attributes(location: "Ho Chi Minh City")

Category.create!(name: "Java")

