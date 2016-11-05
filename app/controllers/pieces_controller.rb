# Generated this controller using the scaffold generator: #MDM
# rails generate scaffold Piece title:string artist_name:string length:integer width:integer height:integer year:integer
class PiecesController < ApplicationController
  # Use the authenticate_user action just like you did for the tweets.
  before_action :authenticate_user!, except: [:index, :show]

  
  # Update to following line to allow all except :index and :show #MDM
  # before_action :set_piece, only: [:show, :edit, :update, :destroy]
  

  # GET /pieces
  # GET /pieces.json
  def index
    @pieces = Piece.all
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    # Add in this #MDM
    @piece = Piece.find(params[:id])
  end

  # GET /pieces/new
  def new
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    @piece = Piece.new
    # @piece = current_user.pieces.new
  end

  # GET /pieces/1/edit
  def edit
    # Add in this #MDM
    # Use current_user below, so that new pieces are only created by the logged in user #MDM
    @piece = Piece.find(params[:id])
    @piece = current_user.pieces.find(params[:id])
  end

  # POST /pieces
  # POST /pieces.json
  def create
    # Use current_user below, so that new tweets are only created by the logged in user #MDM
    #@piece = Piece.new(piece_params)
    @piece = current_user.pieces.new(piece_params)


    respond_to do |format|
      if @piece.save
        format.html { redirect_to @piece, notice: 'Piece was successfully created.' }
        format.json { render :show, status: :created, location: @piece }
      else
        format.html { render :new }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pieces/1
  # PATCH/PUT /pieces/1.json
  def update
    # Add in this #MDM
    @piece = Piece.find(params[:id])        
    
    respond_to do |format|
      if @piece.update(piece_params)
        format.html { redirect_to @piece, notice: 'Piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece }
      else
        format.html { render :edit }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pieces/1
  # DELETE /pieces/1.json
  def destroy
    # Add in this #MDM
    # Use current_user below, so that new pieces are only created by the logged in user #MDM
    # @piece = Piece.find(params[:id])  
    @piece = current_user.pieces.find(params[:id])
    
    @piece.destroy
    respond_to do |format|
      format.html { redirect_to pieces_url, notice: 'Piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @piece = Piece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece_params
     # Remove the :user_id #MDM
     params.require(:piece).permit(:title, :artist_name, :length, :width, :height, :year)

    end
end
