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
#

require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: {  }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: {  }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
