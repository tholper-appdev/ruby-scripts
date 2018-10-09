desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  min_num = numbers.at(0)
  
  numbers.each do |num|
                                
    if (num < min_num)
      min_num = num
    end
  end

  ap("Your numbers:")
  ap(numbers)
  ap("Minimum: " + min_num.to_s)

end
