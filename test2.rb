
def overlap(s_starttime, s_endtime, a_starttime, a_endtime)
 if a_starttime.to_i <= s_starttime.to_i && a_endtime.to_i >= s_endtime.to_i
  puts "You have a match!"
else
  puts "Sorry, there are no matches at this time. Please login again soon to check."
end
end

overlap(9, 12, 9, 12)
