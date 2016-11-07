# This file was created by me #MDM
# item.rb
# Take another admin rb file as a template
# you could have also issued a command line command in order to create this. #MDM

ActiveAdmin.register Item do
    # allow to edit :user :title :url and :text
    permit_params :user, :title, :url, :text
end