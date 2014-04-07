class DraftsController < ApplicationController

  def new
    # render the template of the letter
    # for the user to fill in
    # binding.pry
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
    @draft = Draft.find(params[:id])


  end


  def share

  end

  def update
    @draft = Draft.find(params[:id])
    if @draft.update(draft_params)
      #flash[:notice] = "Email sent successfully!"
      DraftMailer.email_message(@draft).deliver

      redirect_to root_path, notice: 'draft was successfully updated.'
    else
      render action: 'edit'
    end

  end

  def edit
    @drafts = Draft.find
  end


  #post email thing
  def email
  end


private
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_params
      params.require(:draft).permit(:email, :share_option)
    end
end
