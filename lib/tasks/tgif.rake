desc "Check if today is Friday"

day_of_week = Date.today.wday

if day_of_week == 5
    message = "Yay, it's Friday!"
else
    message = "Nope, not yet :/"
end

task :tgif do
ap(message)
end
