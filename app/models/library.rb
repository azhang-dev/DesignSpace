class Library < ApplicationRecord
    has_and_belongs_to_many :projects
    belongs_to :user, optional: true
end
