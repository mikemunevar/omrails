# Let's add a :name and a :username field to our USERS table #MDM
# This migration was created with the follwing command #MDM
# The uniq part is to ascertain username is unique at the database level.
# rails generate migration AddUsernameAndNameToUsers username:string:uniq name:string
# then
# rails db:migrate
# And remember to add in the new fields to /views/devise/registrations/new.html.erb

class AddUsernameAndNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :name, :string
  end
end
