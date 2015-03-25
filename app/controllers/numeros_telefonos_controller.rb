class NumerosTelefonosController < ApplicationController
  before_action :set_numeros_telefono, only: [:show, :edit, :update, :destroy]

  # GET /numeros_telefonos
  # GET /numeros_telefonos.json
  def index
    @numeros_telefonos = NumerosTelefono.all
  end

  # GET /numeros_telefonos/1
  # GET /numeros_telefonos/1.json
  def show
  end

  # GET /numeros_telefonos/new
  def new
    @numeros_telefono = NumerosTelefono.new
  end

  # GET /numeros_telefonos/1/edit
  def edit
  end

  # POST /numeros_telefonos
  # POST /numeros_telefonos.json
  def create
    @numeros_telefono = NumerosTelefono.new(numeros_telefono_params)

    respond_to do |format|
      if @numeros_telefono.save
        format.html { redirect_to @numeros_telefono, notice: 'Numeros telefono was successfully created.' }
        format.json { render :show, status: :created, location: @numeros_telefono }
      else
        format.html { render :new }
        format.json { render json: @numeros_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numeros_telefonos/1
  # PATCH/PUT /numeros_telefonos/1.json
  def update
    respond_to do |format|
      if @numeros_telefono.update(numeros_telefono_params)
        format.html { redirect_to @numeros_telefono, notice: 'Numeros telefono was successfully updated.' }
        format.json { render :show, status: :ok, location: @numeros_telefono }
      else
        format.html { render :edit }
        format.json { render json: @numeros_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numeros_telefonos/1
  # DELETE /numeros_telefonos/1.json
  def destroy
    @numeros_telefono.destroy
    respond_to do |format|
      format.html { redirect_to numeros_telefonos_url, notice: 'Numeros telefono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numeros_telefono
      @numeros_telefono = NumerosTelefono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def numeros_telefono_params
      params.require(:numeros_telefono).permit(:Numero)
    end
end
