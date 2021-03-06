class Candidates::RegistrationsController < Devise::RegistrationsController
	def new
    @candidate = Candidate.new
    

    @candidate.build_education_info
    @candidate.build_work_info
    #@candidate.category_questions.build
    @candidate.candidate_languages.build
  end

  def show
    @candidate = Candidate.find(params[:id])
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
      params.require(:candidate).permit(:id,:photo,:category_id,:first_name,:last_name,:address,:password,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality, :years_experience, :salary,
        :date_start1,:date_end1,:employer1, :functions1,:date_start2,:date_end2,:employer2,:functions2,
        :smoker, :car,:driving_licence,:level_education_id,candidate_languages_attributes: [:id,:candidate_id,:language_id],education_info_attributes: [:id,:history],
        :work_info_attributes => [:sectors_experience,:current_job,:last_employer,:key_skills],
        :availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[], :category_question_ids => []
        )
    end
end