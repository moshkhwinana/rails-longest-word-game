class GamesController < ApplicationController
  def new
    # display a new random grid and a form
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    # with POST

    word_array = params[:word].split("")
    grid = params[:grid].split(" ")
    grid.each { |letter| params[:word] }
    
    lose = word_array.any? do |input_letter|
      !grid.include?(input_letter)
    end
    raise

    # The word can’t be built out of the original grid ❌
    # The word is valid according to the grid, but is not a valid English word ❌
    # The word is valid according to the grid and is an English word ✅
  end
end

# params = {"word"=>"ola", "authenticity_token"=>"[FILTERED]"}
# raise used for debugging and showing params

# Another way is to add either the binding.break, binding.b or debugger keyword
# as a breakpoint in your controller code and to trigger the request by
# submitting the form. It will open a debugging session in your terminal rails s
# process. You can then type next to execute the next line or continue to finish
# rendering the view:
