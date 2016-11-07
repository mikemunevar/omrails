class Item < ApplicationRecord
  belongs_to :user
  
  # Validation part, make sure we have a user #MDM
  validates :user, presence: true
end
