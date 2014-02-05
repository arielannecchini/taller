class IvaConditionsController < ApplicationController
  before_action :set_iva_condition, only: [:show, :edit, :update, :destroy]

  # GET /iva_conditions
  # GET /iva_conditions.json
  def index
    @iva_conditions = IvaCondition.all
  end

  # GET /iva_conditions/1
  # GET /iva_conditions/1.json
  def show
  end

  # GET /iva_conditions/new
  def new
    @iva_condition = IvaCondition.new
  end

  # GET /iva_conditions/1/edit
  def edit
  end

  # POST /iva_conditions
  # POST /iva_conditions.json
  def create
    @iva_condition = IvaCondition.new(iva_condition_params)

    respond_to do |format|
      if @iva_condition.save
        format.html { redirect_to @iva_condition, notice: 'Iva condition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @iva_condition }
      else
        format.html { render action: 'new' }
        format.json { render json: @iva_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iva_conditions/1
  # PATCH/PUT /iva_conditions/1.json
  def update
    respond_to do |format|
      if @iva_condition.update(iva_condition_params)
        format.html { redirect_to @iva_condition, notice: 'Iva condition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iva_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iva_conditions/1
  # DELETE /iva_conditions/1.json
  def destroy
    @iva_condition.destroy
    respond_to do |format|
      format.html { redirect_to iva_conditions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iva_condition
      @iva_condition = IvaCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iva_condition_params
      params.require(:iva_condition).permit(:code, :description, :observation)
    end
end
