# app/models/job_application.rb
class JobApplication < ApplicationRecord
  belongs_to :user
  validates :title, :company, presence: true
end