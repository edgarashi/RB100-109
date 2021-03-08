names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name (x)
  x.sample
end

def activity (y)
  y.sample
end

def sentence (a, b)
  "#{a} went #{b} today!"
end


puts sentence(name(names), activity(activities))