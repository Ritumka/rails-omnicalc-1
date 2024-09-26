class OmniController < ApplicationController
  def nsquare
    render({ :template => "new/square_new" })
  end

  def rsquare
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 2

    render({ :template => "results/square_result" })
  end

  def nsquare_root
    render({ :template => "new/square_root_new" })
  end

  def rsquare_root
    @the_num = params.fetch("user_number").to_f
    @the_result = Math.sqrt(@the_num)

    render({ :template => "results/square_root_result" })
  end

  def npayment
    render({ :template => "new/payment_new" })
  end

  def rpayment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @pv = params.fetch("user_pv").to_f

    r = (@apr / 100) / 12
    n = @years * 12

    numerator = r * @pv
    denominator = 1 - (1 + r) ** -n

    @payment = numerator / denominator

    render({ :template => "results/payment_result" })
  end
end

# get("/random/new") do

#   erb(:random_new)

# end

# get("/random/results") do
#   @min = params.fetch("user_min").to_f
#   @max = params.fetch("user_max").to_f

#   @random_number =rand(@min..@max)

#   erb(:random_results)

# end
