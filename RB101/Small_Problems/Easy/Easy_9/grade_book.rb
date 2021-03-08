###GRADE_BOOK###

##Problem##
# write a method that determines the mean(avg)
# of three scores passed to it
#   return letter value associated with that grade

#   **TESTED VALUES ARE ALL BTWN 0 AND 100
#   NO NEED TO CHECK FOR NEGATIVE VALUES OR
#   VALUES > 100**

##Pseudocode//Algo##
# Define method called 'get_grade'
#   pass in three scores
#   score = three scores added to each other, divided by length

# Create grade scoring using case statement
#   case score
#   when 90 <= score <= 100
#     'A'
#   etc


def get_grade(score1, score2, score3)
  arr = [score1, score2, score3]
  score = (score1+score2+score3)/arr.length

  case score
  when 90..100 then 'A'
  when 80..90 then 'B'
  when 70..80 then 'C'
  when 60..70 then 'D'
  when 0..60 then 'F'
  end
end

p get_grade(95, 90, 93)  == "A"
p get_grade(50, 50, 95) == "D"