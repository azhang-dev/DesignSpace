class User < ApplicationRecord
     # Use the bcrypt gem to encrypt passwords at the point of creating a new User object
  # in the 'users' table, and store ONLY the encrypted version

  # User.create! email: 'whatever', password: 'chicken'  ------------->  password_digest: 's7s78fs79f$^#^#7d9f798sdd78f'
  has_secure_password

  has_many :projects

  has_many :libraries

  #has_and_belongs_to_many :library_projects, class_name: "Project"
  # You can't leave the email field blank! (How would you login?) ... it also has to be unqiue
  validates :email, presence: true, uniqueness: true

  # users to be able to follow other users
  has_many :followed_users, class_name: 'Follow', foreign_key: 'followee_id'
  has_many :following_users, class_name: 'Follow', foreign_key: 'follower_id'
  
  has_many :following, through: :following_users, source: :followed
  has_many :followers, through: :followee_users, source: :follower

  

  def follow_safe( user_to_follow )

    if self.following.include? user_to_follow
      return false
    else
      self.following << user_to_follow
      return true
    end

    def following_projects
      Project.where user: self.following


    end



  end



end
