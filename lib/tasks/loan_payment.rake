desc "Calculate monthly loan payments"
task :loan_payment do
    path_to_apr = Rails.root + "lib/input_files/loan_payment_apr.txt"
    path_to_num_yrs = Rails.root + "lib/input_files/loan_payment_years.txt"
    path_to_principal = Rails.root + "lib/input_files/loan_payment_principal.txt"
    
    apr = string_input = open(path_to_apr).read.chomp.to_f
    num_yrs = string_input = open(path_to_num_yrs).read.chomp.to_f
    principal = string_input = open(path_to_principal).read.chomp.to_f
    mo_pay = (apr * principal) / (1 - ((1 + apr)**-num_yrs))
  
    ap("APR: " + apr.to_s)
    ap("Number of Years: " + num_yrs.to_s)
    ap("Principal: $" + principal.to_s)
    ap("Monthly Payment: $" + mo_pay.to_s)
  
end
