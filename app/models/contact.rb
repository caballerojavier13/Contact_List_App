class Contact < ApplicationRecord
	# validations
	validates :first_name, presence: true

	# hooks
	before_create -> { set_permalink(2) }

	def full_name
		"#{self.first_name} #{self.last_name}".titleize
	end

end
