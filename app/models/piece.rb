# Generated this using a rails scaffold
# rails generate scaffold Piece title:string artist_name:string length:integer width:integer height:integer year:integer
class Piece < ApplicationRecord
  #Make sure that you define this as a belongs_to relationship #MDM
  belongs_to :user

end
