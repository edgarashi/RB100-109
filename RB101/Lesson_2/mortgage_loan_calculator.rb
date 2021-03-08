
def prompt(message)
  Kernel.puts("=> #{message}")
end

def years_in_months(years)
  years.to_i * 12
end

def apr_to_float(rate)
  (rate.to_i.to_f / 12) / 100
end

loop do
  prompt("What up!! Welcome to Loan Calculator, I'm Mr. Loan.")

  prompt("What is your loan amount, sonny?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("Positive number....bitch")
    else
      break
    end
  end

  prompt("What is that Annual Percentage Rate (APR)?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%")

  monthly_interest_rate = ''
  loop do
    yearly_interest_rate = gets.chomp
    monthly_interest_rate = apr_to_float(yearly_interest_rate)

    if yearly_interest_rate.empty?() || yearly_interest_rate.to_f() < 0
      prompt("POSITIVE,bitch")
    else
      break
    end
  end

  prompt("What is the loan duration in years?")

  loan_duration_in_months = ''
  loop do
    months = gets.chomp
    loan_duration_in_months = years_in_months(months)

    if months.empty?() || months.to_f() < 0
      prompt("Valid number, bitch")
    else
      break
    end
  end

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate.to_f)/
                    (1 - (1 + monthly_interest_rate.to_f)**
                    (-loan_duration_in_months.to_f))
                    binding.pry

  prompt("Your monthly payment is: #{monthly_payment}")

  prompt("Wanna go again baby?")
  prompt("I'm a lonely calculator")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using the Mortgage Calculator!!")
prompt("Good bye......please come again")
