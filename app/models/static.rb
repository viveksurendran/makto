class Static < ApplicationRecord
	 validates :organization, presence: true,
                    length: { minimum: 5, maximum: 30 }
	 validates :name, :enquiry, presence: true,
                    length: { minimum: 5, maximum: 30 }

     validates :phone, presence: true,
                    length: { minimum: 10, maximum: 11 }
     
     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

     validates :description, presence: true,
                    length: { minimum: 25, maximum: 250 }
end
