class TrademarksController < ApplicationController
  before_action :set_trademark, only: [:show, :edit, :update, :destroy]

  # GET /trademarks
  # GET /trademarks.json
  def index
    @trademarks = Trademark.all
  end

  # GET /trademarks/1
  # GET /trademarks/1.json
  def show
  end

  # GET /trademarks/new
  def new
    @trademark = Trademark.new
  end

  # GET /trademarks/1/edit
  def edit
  end

  # POST /trademarks
  # POST /trademarks.json
  def create
    @trademark = Trademark.new(trademark_params)

    respond_to do |format|
      if @trademark.save
        format.html { redirect_to @trademark, notice: 'Trademark was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trademark }
      else
        format.html { render action: 'new' }
        format.json { render json: @trademark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trademarks/1
  # PATCH/PUT /trademarks/1.json
  def update
    respond_to do |format|
      if @trademark.update(trademark_params)
        format.html { redirect_to @trademark, notice: 'Trademark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trademark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trademarks/1
  # DELETE /trademarks/1.json
  def destroy
    @trademark.destroy
    respond_to do |format|
      format.html { redirect_to trademarks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trademark
      @trademark = Trademark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trademark_params
      params.require(:trademark).permit(:code, :description, :observation)
    end
end
