class UserformsController < ApplicationController
  before_action :set_userform, only: [:show, :edit, :update, :destroy]

  # GET /userforms
  # GET /userforms.json
  def index
    @userforms = Userform.all
    respond_to do |format|
      format.html
      format.csv { send_data @userforms.to_csv }
    end
  end

  # GET /userforms/1
  # GET /userforms/1.json
  def show
  end

  # GET /userforms/new
  def new
    @userform = Userform.new
  end

  # GET /userforms/1/edit
  def edit
  end

  # POST /userforms
  # POST /userforms.json
  def create
    @userform = Userform.new(userform_params)

    respond_to do |format|
      if @userform.save
        format.html { redirect_to @userform, notice: 'Userform was successfully created.' }
        format.json { render :show, status: :created, location: @userform }
      else
        format.html { render :new }
        format.json { render json: @userform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userforms/1
  # PATCH/PUT /userforms/1.json
  def update
    respond_to do |format|
      if @userform.update(userform_params)
        format.html { redirect_to @userform, notice: 'Userform was successfully updated.' }
        format.json { render :show, status: :ok, location: @userform }
      else
        format.html { render :edit }
        format.json { render json: @userform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userforms/1
  # DELETE /userforms/1.json
  def destroy
    @userform.destroy
    respond_to do |format|
      format.html { redirect_to userforms_url, notice: 'Userform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_userform
    @userform = Userform.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def userform_params
    params.require(:userform).permit(:name, :age, :email, :contact_no, :interest,teams_attributes: [:team_name,:team_technology,:team_project,:removed],departments_attributes: [:dept_name,:dept_description,:removed])
  end

end
