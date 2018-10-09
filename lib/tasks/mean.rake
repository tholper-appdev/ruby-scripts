desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  sum = 0
  numbers.each do |num|
    sum = sum + num
  end
  
  mean = sum / numbers.size
  
  ap("Your numbers:")
  ap(numbers)
  ap("Mean: " + mean.to_s)

end
