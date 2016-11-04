class TweetsController < ApplicationController
  
  # :authenticate_user comes from the devise documentation.  Make sure to authenticate the user for all actions except index and show #MDM
  before_action :authenticate_user!, except: [:index, :show]
  
  
  # Move the next line directly into each function
  # before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
    # Add in this #MDM
    @tweet = Tweet.find(params[:id])
  end

  # GET /tweets/new
  def new
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    # @tweet = Tweet.new
    @tweet = current_user.tweets.new
  end

  # GET /tweets/1/edit
  def edit
    # Add in this #MDM
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    @tweet = Tweet.find(params[:id])
    @tweet = current_user.tweets.find(params[:id])
    
  end

  # POST /tweets
  # POST /tweets.json
  def create
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    #@tweet = Tweet.new(tweet_params)
    @tweet = current_user.tweets.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    # Add in this #MDM
    @tweet = Tweet.find(params[:id])    
    
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    # Add in this #MDM
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    # @tweet = Tweet.find(params[:id])
    @tweet = current_user.tweets.find(params[:id])
  
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Move the below to the above functions, then you can delete it. #MDM
    # def set_tweet
    #   @tweet = Tweet.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      # Remove the :user_id #MDM
      # params.require(:tweet).permit(:user_id, :content)
      params.require(:tweet).permit(:content)

    end
end
