desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  sum = 0
  numbers.each do |num|
    sum = sum + num
  end

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences  
  mean = sum / numbers.size
  
  sum_diff = 0
  numbers.each do |num|
    sum_diff = (sum_diff + (num - mean)**2)
  end  

  variance = sum_diff/numbers.size

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance
  stand_dev = Math.sqrt(variance)

  ap("Your numbers:")
  ap(numbers)
  ap("Standard Deviation: " + stand_dev.to_s)

end
