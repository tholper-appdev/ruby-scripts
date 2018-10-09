desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # sort your set
  numbers_sort = numbers.sort
  
  # find the number of items in your sorted set
  numbers_count = numbers_sort.count
 
  if numbers_count.odd? == true
    median = numbers_sort.at((numbers_count - 1)/2)
  elsif
    med_low = numbers_sort.at(((numbers_count)/2 - 1))
    med_high = numbers_sort.at(((numbers_count)/2))
    median = (med_low + med_high) / 2
  end
  # if your sorted set has an odd number of items
  # save the middle number as your median
  # otherwise
  # find the number to the left of the middle number
  # find the number to the right of the middle number
  # average the left and right numbers and save it as your median

  ap("Sorted numbers:")
  ap(numbers_sort)
  ap("Median: " + median.to_s)
  
end
