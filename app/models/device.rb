class Device < ActiveRecord::Base
  attr_accessible :brand, :code, :date_assign, :department, :model, :name, :number, :purchase_date, :responsible, :serial_number, :status
  validates :brand, :length => { :minimum => 2}
  validates :name, presence: true

  belongs_to :employee

end
