class Business < ApplicationRecord
	 validates :organization, :industry, presence: true,
                    length: { minimum: 5, maximum: 30 }
	 validates :firstname, :lastname, presence: true,
                    length: { minimum: 5, maximum: 30 }

     validates :phone, presence: true,
                    length: { minimum: 4, maximum: 12 }
     
     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

     validates :totalemployee, presence: true,
                    length: { minimum: 1, maximum: 10 }
     validates :countrycode, presence: true,
                    length: { minimum: 2, maximum: 4 }
end
