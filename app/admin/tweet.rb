# Created by issuing command: #MDM
# rails generate active_admin:resource Tweet
ActiveAdmin.register Tweet do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

# In order to allow the user to edit certain attribute: #MDM
# permit_params :list, :of, :attributes, :on, :model
permit_params :user, :content
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
