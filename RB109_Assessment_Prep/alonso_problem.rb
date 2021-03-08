=begin
Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

-----------------------INSTRUCTIONS--------------------------------------
Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.
--------------------------PROBLEM----------------------------------------

Questions:

Input: nested arr (contact_data)
       hash (contacts)

Output: contacts hash, populated with nested arr information

---------------------------RULES-----------------------------------------
Explicit:

Implicit: label email, address, and phone as keys
          with information as values
          and then contact names point to their information

--------------------------EXAMPLES---------------------------------------
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }


["joe@email.com", "123 Main st.", "555-123-4567"]

key:                        value:
                           {:email -> element1
 "joe smith"->             :address -> element2
                           :phone -> element 3}


["sally@email.com", "404 Not Found Dr.", "123-234-3454"]

key:                                    :value
                                        {:email -> element 1
 "Sally Johnson" ->                     :address -> element2
                                        :phone -> element 3}



----------------------------ALGO----------------------------------------
Goals:
  first to categorize contact_data array subarray elements into unique hashes
  point the values in contacts hash to these unique hashes

Iterating through contacts hash
  Iterate through contact_data to get to subarrs
    create hash
      {first element -> email
      second element -> address
      third element -> phone}
    we will be at "Joe Smith" when at our first subarray


def contact_subsidize
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

   contacts.each do |name, value|
    contact_data.each do |sub|
      contacts[name] = {email: sub[0], address: sub[1], phone: sub[2]}
    end
  end


"joe" is being reassigned to sally's values



=end

def contact_subsidize
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}




  contacts.each do |name, value| #"Joe Smith"   and then "Sally Johnson"
    contact_data.each do |sub|  #"joe@email.com   -> "sally@email.com"
      contacts[name] = {email: sub[0], address: sub[1], phone: sub[2]}
    end
  end

  p contacts

end

contact_subsidize