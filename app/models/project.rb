class Project < ApplicationRecord
    belongs_to :user, optional: true

    has_and_belongs_to_many :styles

    has_and_belongs_to_many :libraries
    

end
