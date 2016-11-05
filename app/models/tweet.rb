class Tweet < ApplicationRecord
    #Make sure that you define this as a belongs_to relationship #MDM
  belongs_to :user
end
