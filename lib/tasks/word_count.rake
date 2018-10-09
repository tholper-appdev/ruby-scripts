desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  # =====================================================================
  # Your code goes below.
  # The text from the file is in the variable 'text'.
  # The special word from the file is in the variable 'special_word'.
  # =====================================================================
  
  text_no_spaces = text.gsub(/\s+/, "")
  word_count = text.scan(/(?=#{special_word})/).count

  ap("File input: " + text)
  ap("Character count (with spaces): " + text.size.to_s)
  ap("Character count (without spaces): " +  text_no_spaces.size.to_s)
  ap("Occurrences of " + special_word + ": " + word_count.to_s)
  
end
