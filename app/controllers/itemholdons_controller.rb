class ItemholdonsController < ApplicationController
  before_action :set_itemholdon, only: [:show, :edit, :update, :destroy]

  # GET /itemholdons
  # GET /itemholdons.json
  def index
    @itemholdons = Itemholdon.all
  end

  # GET /itemholdons/1
  # GET /itemholdons/1.json
  def show
  end

  # GET /itemholdons/new
  def new
    @itemholdon = Itemholdon.new
  end

  # GET /itemholdons/1/edit
  def edit
  end

  # POST /itemholdons
  # POST /itemholdons.json
  def create
    @itemholdon = Itemholdon.new(itemholdon_params)

    respond_to do |format|
      if @itemholdon.save
        format.html { redirect_to @itemholdon, notice: 'Itemholdon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @itemholdon }
      else
        format.html { render action: 'new' }
        format.json { render json: @itemholdon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemholdons/1
  # PATCH/PUT /itemholdons/1.json
  def update
    respond_to do |format|
      if @itemholdon.update(itemholdon_params)
        format.html { redirect_to @itemholdon, notice: 'Itemholdon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @itemholdon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemholdons/1
  # DELETE /itemholdons/1.json
  def destroy
    @itemholdon.destroy
    respond_to do |format|
      format.html { redirect_to itemholdons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemholdon
      @itemholdon = Itemholdon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemholdon_params
      params.require(:itemholdon).permit(:shopifyId, :minStock, :active, :untilDate)
    end
end
