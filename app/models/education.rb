class Education < ActiveRecord::Base
	belongs_to :employee
	mount_uploader :constancia, ConstanciaUploader
end
