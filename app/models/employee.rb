class Employee < ActiveRecord::Base
  attr_accessible :department, :first_name, :last_name
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :department, presence: true

  has_many :devices

end
