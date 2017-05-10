class Training < ActiveRecord::Base
  has_many :training_employees
  has_many :employees, :through => :training_employees

  belongs_to :institution
end
