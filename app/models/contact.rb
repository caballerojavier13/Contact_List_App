class Contact < ApplicationRecord

	before_create -> { set_permalink(2) }

	def full_name
		"#{self.first_name} #{self.last_name}".titleize
	end

end
