class DraftsController < ApplicationController

  def new
    # render the template of the letter
    # for the user to fill in
    @letter = Letter.find(params[:letter_id])
  end

  def create

    @letter = Letter.find(params[:letter_id])
    @draft = @letter.drafts.create
    if params[:variables]
      params[:variables].each_with_index do |variable, i|
        @draft.draft_variables.create(:letter_id => @letter.id, :variable_ordinal => i, :variable_value => variable)      
      end    # process their data
    end
    #binding.pry
    redirect_to letter_draft_path(@letter, @draft)
  end

  def show
    @letter = Letter.find(params[:letter_id])
    #binding.pry
    #@draft_id = Draft.find(:id)
    @draft_variables = DraftVariable.where(draft_id: params[:id].to_i)
    
    
  end

end
