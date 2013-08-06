class Evaluation < ActiveRecord::Base
  attr_accessible :comm_skill, :fit, :interview_time, :interviewer, :passion, :potential, :subject, :tech_skill

  belongs_to :employee

  validates :employee_id, :presence => true
end
