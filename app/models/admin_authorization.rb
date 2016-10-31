# I created this admin_authorization.rb. This is for creating my only authorization adapter. See active_admin.rb #MDM

class AdminAuthorization < ActiveAdmin::AuthorizationAdapter
    
    def authorized?(action, subject = nil)
        user && user.admin?      # The user can login so long as they are a user && they are an admin #MDM
    end

end
