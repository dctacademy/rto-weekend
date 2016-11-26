class RegistrationNumber < ActiveRecord::Base
	belongs_to :district
	has_many :localities

	accepts_nested_attributes_for :localities, allow_destroy: true
end
