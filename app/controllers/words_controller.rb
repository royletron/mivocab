class WordsController < ApplicationController
  # GET /words
  # GET /words.json
  def index
    @words = Word.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @words }
    end
  end

  # GET /words/1
  # GET /words/1.json
  def show
    @word = Word.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word }
    end
  end

  # GET /words/new
  # GET /words/new.json
  def new
    @objective = Objective.find(params[:id])
    @word = @objective.words.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word }
    end
  end

  # GET /words/1/edit
  def edit
    @objective = Objective.find(params[:objective_id])
    @word = @objective.words.find(params[:id])
  end

  # POST /words
  # POST /words.json
  def create
    @objective = Objective.find(params[:objective_id])
    @word = @objective.words.create(params[:word])
    redirect_to objective_path(@objective)
  end

  # PUT /words/1
  # PUT /words/1.json
  def update
    @word = Word.find(params[:id])
    @objective = Objective.find(params[:objective_id])

    respond_to do |format|
      if @word.update_attributes(params[:word])
        format.html { redirect_to objective_path(@objective), notice: 'Word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @objective = Objective.find(params[:objective_id])
    @word = @objective.words.find(params[:id])
    @word.destroy
    redirect_to objective_path(@objective)
  end
end
