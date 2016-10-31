# I generated this file by issuing the following command: #MDM
# rails generate migration AddAdminToUsers admin:boolean
# After modifying these files remember to issue rails db:migrate

class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    # Add a default, and make it false #MDM
    # add_column :users, :admin, :boolean
    add_column :users, :admin, :boolean, default: false
  end
end
