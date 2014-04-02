class DraftsController < ApplicationController

  def new
    # render the template of the letter
    # for the user to fill in
    @letter = Letter.find(params[:letter_id])
  end

  def create
    @letter = Letter.find(params[:letter_id])

    params[:variables].each_with_index do |variable, i|
      @letter.drafts.create(:variable_ordinal => i, :variable_content => variable)      
    end    # process their data

    redirect_to @letter
  end

  def show
    # show their final draft of the letter
  end

end
