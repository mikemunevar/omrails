# Use the Generate controller command to create this controller.
# mikemunevar:~/workspace (master) $ rails generate controller users show
# Running via Spring preloader in process 2375
#       create  app/controllers/users_controller.rb
#       route  get 'users/show'
#       invoke  erb
#       create    app/views/users
#       create    app/views/users/show.html.erb
#       invoke  test_unit
#       create    test/controllers/users_controller_test.rb
#       invoke  helper
#       create    app/helpers/users_helper.rb
#       invoke    test_unit
#       invoke  assets
#       invoke    coffee
#       create      app/assets/javascripts/users.coffee
#       invoke    scss
#       create      app/assets/stylesheets/users.scss

class UsersController < ApplicationController
  def show
    # Insert the following command for the controller #MDM
    # @user = User.find(params[:id])
    # Implement the URL by /username #MDM
    @user = User.find_by(username: params[:username])
    # You need this line so that you can show the tweets inside of the user profile page. #MDM
    @tweets = @user.tweets
  end
end
