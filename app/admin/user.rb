ActiveAdmin.register User do
# Create this file by invoking the command:
# rails generate active_admin:resource user

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# Define that admins can only update emails and admin flag #MDM
# Remember to add in :name and :username
permit_params :email, :admin, :name, :username
    
    
# Customize the User edit form in activeadmin #MDM
    form do |f|
        f.inputs do
            # Remember to add in newly-created :name and :username #MDM
            f.input :name
            f.input :username
            f.input :email
            f.input :admin
        end
        f.actions
    end

index do
  id_column
  column :email
  column :admin
#   Add a new column for the newly created name and username field #MDM
  column :name
  column :username
  actions
end

end
