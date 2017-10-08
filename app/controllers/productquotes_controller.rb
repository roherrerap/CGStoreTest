class ProductquotesController < ApplicationController
  before_action :set_productquote, only: [:show, :edit, :update, :destroy]

  # GET /productquotes
  # GET /productquotes.json
  def index
    @productquotes = Productquote.all
  end

  # GET /productquotes/1
  # GET /productquotes/1.json
  def show
  end

  # GET /productquotes/new
  def new
    @productquote = Productquote.new
  end

  # GET /productquotes/1/edit
  def edit
  end

  # POST /productquotes
  # POST /productquotes.json
  def create
    @productquote = Productquote.new(productquote_params)

    respond_to do |format|
      if @productquote.save
        format.html { redirect_to @productquote, notice: 'Productquote was successfully created.' }
        format.json { render :show, status: :created, location: @productquote }
      else
        format.html { render :new }
        format.json { render json: @productquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productquotes/1
  # PATCH/PUT /productquotes/1.json
  def update
    respond_to do |format|
      if @productquote.update(productquote_params)
        format.html { redirect_to @productquote, notice: 'Productquote was successfully updated.' }
        format.json { render :show, status: :ok, location: @productquote }
      else
        format.html { render :edit }
        format.json { render json: @productquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productquotes/1
  # DELETE /productquotes/1.json
  def destroy
    @productquote.destroy
    respond_to do |format|
      format.html { redirect_to productquotes_url, notice: 'Productquote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productquote
      @productquote = Productquote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productquote_params
      params.require(:productquote).permit(:quantity, :param1, :param2, :param3, :param4, :product_id, :quote_id)
    end
end
