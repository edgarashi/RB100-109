status = ['awake', 'tired'].sample

wake_up= if status == 'awake'
  "Be productive, motherfucker"
else 
  "Go to sleep baby"
end

puts wake_up