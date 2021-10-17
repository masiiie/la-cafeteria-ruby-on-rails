class DependientesController < ApplicationController
  before_action :set_dependiente, only: [:show, :edit, :update, :destroy]

  # GET /dependientes
  # GET /dependientes.json
  def index
    @dependientes = Dependiente.all
  end

  # GET /dependientes/1
  # GET /dependientes/1.json
  def show
  end

  # GET /dependientes/new
  def new
    @dependiente = Dependiente.new
  end

  # GET /dependientes/1/edit
  def edit
  end

  # POST /dependientes
  # POST /dependientes.json
  def create
    @dependiente = Dependiente.new(dependiente_params)

    respond_to do |format|
      if @dependiente.save
        format.html { redirect_to @dependiente, notice: 'Dependiente was successfully created.' }
        format.json { render :show, status: :created, location: @dependiente }
      else
        format.html { render :new }
        format.json { render json: @dependiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependientes/1
  # PATCH/PUT /dependientes/1.json
  def update
    respond_to do |format|
      if @dependiente.update(dependiente_params)
        format.html { redirect_to @dependiente, notice: 'Dependiente was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependiente }
      else
        format.html { render :edit }
        format.json { render json: @dependiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependientes/1
  # DELETE /dependientes/1.json
  def destroy
    @dependiente.destroy
    respond_to do |format|
      format.html { redirect_to dependientes_url, notice: 'Dependiente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependiente
      @dependiente = Dependiente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependiente_params
      params.require(:dependiente).permit(:nombre, :direccion, :telefono)
    end
end
