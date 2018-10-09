desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  max_num = numbers.at(0)
  numbers.each do |num|
                                
    if (num > max_num)
      max_num = num
    end
  end
  
  min_num = numbers.at(0)
  numbers.each do |num|
                                
    if (num < min_num)
      min_num = num
    end
  end
  
  range = max_num - min_num
  
  ap("Your numbers:")
  ap(numbers)
  ap("Range: " + range.to_s)
end
