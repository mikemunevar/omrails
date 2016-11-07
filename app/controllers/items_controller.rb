class ItemsController < ApplicationController
  # Remove this line below #MDM
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  # Then add them into the separate controller actions(ex: :show, :edit, :update, :destroy) one by one with this line: #MDM
  # @item = Item.find(params[:id])

  # Remember, the Items looks in all the users tweets/items.  by limiting it to current_user, you don''t allow the logged in user to edit any one elses tweets.

  # :authenticate_user comes from the devise documentation.  Make sure to authenticate the user for all actions except index and show #MDM
  before_action :authenticate_user!, except: [:index, :show]

  # You can delete the JSON comment, but I decided to leave it in, you never know #MDM
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    #add this part in #MDM
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    # Update to below to reflect the current_user #MDM
    # @item = Item.new
    @item = current_user.items.new
    # To make the above work, remember to add has_many :items to the user.rb model #MDM
  end

  # GET /items/1/edit
  def edit
    # Add this part in #MDM
    # @item = Item.find(params[:id])
    # Add in current_user
    @item = current_user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    # @item = Item.new(item_params)
    # Add in current_user #MDM
    @item = current_user.items.new(item_params)
    
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    #add this part in #MDM
    # @item = Item.find(params[:id])
    # Add in current_user #MDM
    @item = current_user.items.find(params[:id])
    
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    # Add this part in #MDM
    # @item = Item.find(params[:id])
    # Add in current_user #MDM
    @item = current_user.items.find(params[:id])
    
    
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # No need for the following function #MDM
    # def set_item
    #   @item = Item.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      # params.require(:item).permit(:user_id, :title, :url, :text)
      # Don't permit the user_id to be changeable
      params.require(:item).permit(:title, :url, :text)
    end
end
