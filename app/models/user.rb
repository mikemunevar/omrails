class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
# Remove the :recoverable section to disable the "forgot my password" feature
#         :recoverable,  :rememberable, :trackable, :validatable
                         :rememberable, :trackable, :validatable

    # Make sure to define that you have access to many tweets. #MDM
    has_many :tweets
    
    # Remember to define that a user may has_many pieces relationship #MDM
    has_many :pieces
    
    # Remember to define that a user may has_many items relationship. You need this so that you can use the current_user data #MDM
    has_many :items
    
    
end
