# == Schema Information
#
# Table name: candidates
#
#  id                     :integer          not null, primary key
#  address                :string
#  mobile                 :string
#  email                  :string
#  citizenship            :string
#  start                  :boolean
#  statment               :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  photo                  :string
#  cv                     :string
#  birth_date             :date
#  gender                 :string
#  height                 :string
#  weight                 :string
#  passport               :string
#  foreign_passport       :string
#  marital_status         :string
#  children               :integer
#  sign                   :string
#  first_name             :string
#  last_name              :string
#  nationality            :string
#  smoker                 :boolean
#  driving_licence        :boolean
#  car                    :boolean
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  category_id            :integer
#  interview              :boolean
#  description            :text
#  level_education_id     :integer
#  years_experience       :string
#  salary                 :string
#  country                :string
#  city                   :string
#  password               :string
#  date_start1            :date
#  date_end1              :date
#  employer1              :string
#  functions1             :text
#  date_start2            :date
#  date_end2              :date
#  employer2              :string
#  functions2             :text
#

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
    @candidate.build_education_info
    @candidate.build_work_info
    #@candidate.category_questions.build  
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
      params.require(:candidate).permit(:id,:photo,:category_id,:first_name,:last_name,:password,:country,:city,:address,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality, :years_experience, :salary,
        :smoker, :car,:driving_licence,:level_education_id,candidate_languages_attributes: [:id,:candidate_id,:language_id],education_info_attributes: [:id,:history],
        :work_info_attributes => [:sectors_experience,:current_job,:last_employer,:key_skills],
        :availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[], :category_question_ids => [],
        :date_end1,:employer1, :functions1,:date_start2,:date_end2,:employer2,:functions2)
    end
end
