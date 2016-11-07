class Tweet < ApplicationRecord
    #Make sure that you define this as a belongs_to relationship #MDM
  belongs_to :user
  
  # Create some validations to make sure the the content entered is non-black #MDM
  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
end
