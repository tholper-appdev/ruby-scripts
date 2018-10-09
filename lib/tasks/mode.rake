desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.

    # sort your set
  numbers_sort = numbers.sort
  
  # initialize vars
  current_num = numbers.at(0)
  current_record_count = 1
  max_num = numbers.at(0)
  max_record_count = 1
 
  numbers_sort.each do |num|
    
    if (num == current_num)
      current_record_count = current_record_count + 1
      
      if (current_record_count > max_record_count)
        max_record_count = current_record_count
        max_num = current_num
      end
    else
      current_record_count = 1
      current_num = num    
    end
    
  end

  ap("Sorted numbers:")
  ap(numbers_sort)
  ap("Mode: " + max_num.to_s)

end
