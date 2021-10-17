class MercanciaController < ApplicationController
  before_action :set_mercancium, only: [:show, :edit, :update, :destroy]

  # GET /mercancia
  # GET /mercancia.json
  def index
    @mercancia = Mercancium.all
  end

  # GET /mercancia/1
  # GET /mercancia/1.json
  def show
  end

  # GET /mercancia/new
  def new
    @mercancium = Mercancium.new
  end

  # GET /mercancia/1/edit
  def edit
  end

  # POST /mercancia
  # POST /mercancia.json
  def create
    @mercancium = Mercancium.new(mercancium_params)

    respond_to do |format|
      if @mercancium.save
        format.html { redirect_to @mercancium, notice: 'Mercancium was successfully created.' }
        format.json { render :show, status: :created, location: @mercancium }
      else
        format.html { render :new }
        format.json { render json: @mercancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mercancia/1
  # PATCH/PUT /mercancia/1.json
  def update
    respond_to do |format|
      if @mercancium.update(mercancium_params)
        format.html { redirect_to @mercancium, notice: 'Mercancium was successfully updated.' }
        format.json { render :show, status: :ok, location: @mercancium }
      else
        format.html { render :edit }
        format.json { render json: @mercancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercancia/1
  # DELETE /mercancia/1.json
  def destroy
    @mercancium.destroy
    respond_to do |format|
      format.html { redirect_to mercancia_url, notice: 'Mercancium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercancium
      @mercancium = Mercancium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mercancium_params
      params.require(:mercancium).permit(:product_id, :jornada_id, :recibido)
    end
end
