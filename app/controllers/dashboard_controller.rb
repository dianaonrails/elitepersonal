class DashboardController < ApplicationController
  respond_to :json
  def get_events
    @task = Interview.all
    events = []
    @task.each do |task|
      events << {:id => task.id, :title => "interview for #{Candidate.find(task.candidate_id).first_name}", :start => "#{task.interview_date}",:end => "#{task.interview_date}" }
    end
    render :text => events.to_json
  end
end