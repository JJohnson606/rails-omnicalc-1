class CalculatorController < ApplicationController
 
  def application  
  end
 
  def square_new
    render templates: "calculator/square_new"
  end

  def square_results
    @number = params[:number].to_f
    @result = @number ** 2
    render templates: "calculator/square_results"
  end

  def square_root_new
    render templates: "calculator/square_new"
  end

  def square_root_results
    @number = params[:user_number].to_f
    puts "Input Number: #{@number}"
    @result = Math.sqrt(@number)
    puts "Square Root Result: #{@result}"
  end


  def random_new
    render templates: "calculator/random_new"
  end

  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @result = rand(@min..@max)
    render templates: "calculator/random_results"
  end

  def payment_new
    render templates: "calculator/payment_new"
  end

  def payment_results
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @pv = params[:user_pv].to_f
  
    monthly_interest_rate = (@apr / 100) / 12
    months = @years * 12
  
    @result = (@pv * monthly_interest_rate) / (1 - (1 + monthly_interest_rate)**-months)
    render "calculator/payment_results"
  end
  
end
