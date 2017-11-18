class Static < ApplicationRecord
	 validates :organization, :enquiry, presence: true,
                    length: { minimum: 5, maximum: 30 }
	 validates :name, presence: true,
                    length: { minimum: 5, maximum: 30 }

     validates :phone, presence: true,
                    length: { minimum: 4, maximum: 12 }
     
     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

     validates :description, presence: true,
                    length: { minimum: 25, maximum: 250 }
end
