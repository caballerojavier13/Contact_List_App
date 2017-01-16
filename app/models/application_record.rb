class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
	
	private

		def set_permalink(hex_length)
			self.permalink = loop do
				random = SecureRandom.hex(hex_length)
				break random unless self.class.exists?(permalink: random)
			end
		end  
end
