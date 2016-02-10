class CandidatesController < ApplicationController
  #before_action :authenticate_candidate!,:set_candidate, only: [:show, :edit, :update, :destroy]
  # GET /candidates
  # GET /candidates.json
  set_tab :candidate
  helper :all

  def show_pdf
    @candidate = Candidate.find(params[:candidate_id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end  

  def index
    if params[:client_request]
      @candidates = compare_candidates(params[:client_request])
      puts "*********** candidates ***************"
    else  
      @candidates = Candidate.all
    end    
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
    @candidate.build_nanny_question

    @candidate.build_education_info
    @candidate.build_work_info
    #@candidate.category_questions.build
    
    @candidate.build_governess_question
    @candidate.build_cooker_question
    @candidate.build_driver_question
    @candidate.build_housekeeper_question
    @candidate.build_assistance_question
    @candidate.build_nurse_question
    @candidate.candidate_languages.build
  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)
    
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
    @candidate = Candidate.find(params[:id])
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
      params.require(:candidate).permit(:id,:photo,:category_id,:first_name,:last_name,:password,:address,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality, :years_experience, :salary,
        :smoker, :car,:driving_licence,:level_education_id,candidate_languages_attributes: [:id,:candidate_id,:language_id],education_info_attributes: [:id,:history],
        :work_info_attributes => [:sectors_experience,:current_job,:last_employer,:key_skills],
        :availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[],
        nanny_question_attributes:[:id,:cooking,:walking,:cleaning,:birth_to_one,:one_to_three,:three_to_six,:regime,
          :education,:trips,:work_several,:household_help],
        driver_question_attributes:[:id,:personal_driver,:family_driver,:children,:washing,:luxury_car,:weapons_bodyguard,:trips,:care_house],
        housekeeper_question_attributes:[:id,:dry_wet,:washing,:vip,:furniture,:cooking,:plants_animals,:appliances,:large_areas],
        governess_question_attributes:[:five_to_seven,:seven_to_ten,:cooking,:school,:assistant,:foreign_languages,:several_children],
        nurse_question_attributes:[:older_people,:ambulant_patients,:immobile_patients,:measurements,:intramuscular_injection,:intravenous_injection,
          :procedures,:cleaning_cooking],
        cooker_question_attributes:[:family,:restaurants,:purchase,:menu,:banquets,:during_banquet,:kids,:diets,:knowledge_kitchen],
        assistance_question_attributes:[:dry_wet,:washing_ironing,:vip,:cooking,:systems,:driving,:pool,:small_repairs,:cares,:garden,:plants,:pet_grooming])
    end
end
