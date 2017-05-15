class Employee < ActiveRecord::Base
	validates_uniqueness_of :work_id, :name
	validates_numericality_of :work_id, greater_than:0
	validates_numericality_of :emergency_contact_number, greater_than:0
	mount_uploader :avatar, AvatarUploader

	has_many :educations
	has_many :work_exps
	has_many :dependants
	has_many :employee_abilities
	has_many :abilities, :through => :employee_abilities
	belongs_to :work_structure
	has_many :training_employees
  has_many :trainings, :through => :training_employees

  def self.civil_statuses
    ["Soltero", "Casado", "Viudo", "Divorciado", "Union Libre"];
  end

  def self.bloods
    ["O-", "O" , "A-", " A+" ,"B-", " B+" , "AB-", " AB+"]
  end

	def self.contracts
    ["Permanente", "Temporal" , "Practicante"]
  end
	def self.parentesco
    ["Hijo", "Conyuge", "Hermano"]
  end

	def self.habilidades
		["Ejemplo1", "Ejemplo2", "Ejemplo3"]
	end


	def self.age(dob)
		now = Time.now.utc.to_date
		now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end


	def self.TieneHijosMenores

		employees = Employee.all
		employees.each do |e|
			e.dependants.each do |d|
				if age(d.birth_at) < 18
					e.hasChildren = true
				else
					e.hasChildren = false
				end
			end
			e.save!
		end


	end



end
