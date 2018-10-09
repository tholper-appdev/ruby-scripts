desc "Calculate maximum"
task :maximum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  max_num = numbers.at(0)
  
  numbers.each do |num|
                                
    if (num > max_num)
      max_num = num
    end
  end

  ap("Your numbers:")
  ap(numbers)
  ap("Maximum: " + max_num.to_s)

end
