class Project < ApplicationRecord
    belongs_to :user, optional: true

    has_and_belongs_to_many :styles

    has_and_belongs_to_many :libraries

    #has_and_belongs_to_many :library_users, class_name: "User"
     

end
