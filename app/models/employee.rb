class Employee < ActiveRecord::Base
  attr_accessible :cell, :degree, :email, :grad_time, :name, :univ, :resume
  has_attached_file :resume,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

  validates :name, :presence => true,
  					:length => { :maximum => 50 }
  validates_uniqueness_of :email
  validates :resume, :attachment_presence => true
  validates_attachment_size :resume, :less_than => 2.megabytes

  has_many :evaluations, :dependent => :destroy
end
