class LearnController < ApplicationController
  respond_to :json
  
  def index
    @objectives = Objective.all()
  end
  
  def show
  	@objective = Objective.find(params[:id])
  	@words = @objective.words
  end
  
  def get_word
    @object = Objective.find(params[:objective_id])
    @position = params[:word_position].to_i
    @word = @object.words[@position]
    respond_with @word
  end
end
