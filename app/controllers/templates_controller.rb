class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy]

  # GET /templates
  # GET /templates.json
  def index
    @templates = Template.all
  end

  # GET /templates/1
  # GET /templates/1.json
  def show
    @template_1 = Template.find_by(:id => '1')
    @template_2 = Template.find_by(:id => '2')
    @template_3 = Template.find_by(:id => '3')
    @template_4 = Template.find_by(:id => '4')
    @template_5 = Template.find_by(:id => '5')
  end

  # GET /templates/new
  def new
    @template = Template.find_by(:id => '1')
    @variable = Variable.new
    
    
  end

  # GET /templates/1/edit
  def edit
  end

  # POST /templates
  # POST /templates.json
  def create

    @template = Template.new(template_params)
    @variable = Template.new(template_params)
    respond_to do |format|
      if @template.save
        format.html { redirect_to @template, notice: 'Template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @template }
      else
        format.html { render action: 'new' }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templates/1
  # PATCH/PUT /templates/1.json
  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_to @template, notice: 'Template was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @template }
      else
        format.html { render action: 'edit' }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = Template.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_params
      params.require(:template).permit(:sentence_1, :variable_1_text, :sentence_2, :variable_2_text, :sentence_3, :variable_3_text, :sentence_4, :variable_4_text, :sentence_5, :variable_5_text)
      #params.require(:person).permit(:name, :age)
    end
end
