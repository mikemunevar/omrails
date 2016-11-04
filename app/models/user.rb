class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
# Remove the :recoverable section to disable the "forgot my password" feature
#         :recoverable,  :rememberable, :trackable, :validatable
                         :rememberable, :trackable, :validatable

    # Make sure to define that you have access to many tweets. #MDM
    has_many :tweets
end
