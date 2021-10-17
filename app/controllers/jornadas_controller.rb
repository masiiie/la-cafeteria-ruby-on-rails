class JornadasController < ApplicationController
  before_action :set_jornada, only: [:show, :edit, :update, :destroy]

  # GET /jornadas
  # GET /jornadas.json
  def index
    @jornadas = Jornada.all
  end

  # GET /jornadas/1
  # GET /jornadas/1.json
  def show
    @jornadas = Jornada.find(params[:id])
    @mercancia =  Mercancium.where(jornada:@jornadas.id)
  end

  # GET /jornadas/new
  def new
    @jornada = Jornada.new
  end

  # GET /jornadas/1/edit
  def edit
  end

  # POST /jornadas
  # POST /jornadas.json
  def create
    @jornada = Jornada.new(jornada_params)

    respond_to do |format|
      if @jornada.save
        format.html { redirect_to @jornada, notice: 'Jornada was successfully created.' }
        format.json { render :show, status: :created, location: @jornada }
      else
        format.html { render :new }
        format.json { render json: @jornada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jornadas/1
  # PATCH/PUT /jornadas/1.json
  def update
    respond_to do |format|
      if @jornada.update(jornada_params)
        format.html { redirect_to @jornada, notice: 'Jornada was successfully updated.' }
        format.json { render :show, status: :ok, location: @jornada }
      else
        format.html { render :edit }
        format.json { render json: @jornada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jornadas/1
  # DELETE /jornadas/1.json
  def destroy
    @jornada.destroy
    respond_to do |format|
      format.html { redirect_to jornadas_url, notice: 'Jornada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jornada
      @jornada = Jornada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jornada_params
      params.require(:jornada).permit(:fecha, :fondo_inicial, :fondo_final, :dependiente_id)
    end
end
