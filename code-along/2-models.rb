# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
puts "There are #{Company.all.count} companies"
# 2. insert new rows in companies table
apple = Company.new
apple["name"] = "Apple Inc."
apple["url"] = "https://apple.com"
apple["city"] = "Cupertino"
apple["state"] = "CA"
apple.save 

puts "There are #{Company.all.count} companies"

amazon = Company.new
amazon["name"] = "Amazon.com, Inc."
amazon["city"] = "Seattle"
amazon["state"] = "WA"
amazon.save

puts "There are #{Company.all.count} companies"

tesla = Company.new
tesla.name = "Tesla, Inc."
tesla.url = "https://tesla.com"
tesla.city = "Palo Alto"
tesla.state = "CA"
tesla.save

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
#puts Company.where({"state" => "CA"})
# 4. query companies table to find single row for Apple
company = Company.find_by({"state" => "CA", "name" => "Apple Inc."})
# puts company.inspect
# puts company.class
# 5. read a row's column value
# puts company["name"]
# puts company["url"]
#puts "Visit the #{company.name} website at #{company.url}"
# 6. update a row's column value
# amazon = Company.find_by({"name" => "Amazon.com, Inc."})
# amazon.url = "https://www.amazon.com"
# amazon.save

# company = Company.find_by({"name" => "Amazon.com, Inc."})
# puts company.inspect
# 7. delete a row
company =Company.new
company.name = "Tesler"
company.save
puts Company.all.count
tesler = Company.find_by({"name" => "Tesler"})
tesler.destroy 
puts Company.all.count