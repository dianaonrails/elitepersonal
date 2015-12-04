class CandidatesController < ApplicationController
  #before_action :authenticate_candidate!,:set_candidate, only: [:show, :edit, :update, :destroy]
  # GET /candidates
  # GET /candidates.json
  set_tab :candidate
  def index
    @candidates = Candidate.all
    
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
    @candidate = Candidate.find(params[:id])
  end

  def personal_area
    @candidate = current_candidate
  end  

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    @candidate.build_education_info
    @candidate.build_work_info
    @candidate.category_questions.build
    @candidate.build_governess_question
    @candidate.build_cooker_question
    @candidate.build_driver_question
    @candidate.build_housekeeper_question
    @candidate.build_assistance_question
    @candidate.build_nurse_question
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.category_id == '1'
      @candidate.category_questions_attributes = [:id,:candidate_id,:cooking,:regime,:cleaning,:education,:trips,:work_several,
        :household_help,:educational_techniques,:birth_to_one,:one_to_three,:three_to_six]
    end  
    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: 'Your profile was successfully created.' }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
    #redirect_to new_candidate_path, notice: 'Candidate was successfully created.'
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Your profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:photo,:category_id,:first_name,:last_name,:address,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality,
        :smoker, :car,:driving_licence,education_info_attributes:[:level,:history,:languages],work_info_attributes:[:sectors_experience,:years_experience,
          :current_job,:last_employer,:key_skills,:salary],:availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[])
    end
end
