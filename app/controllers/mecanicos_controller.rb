class MecanicosController < ApplicationController
  before_action :set_mecanico, only: [:show, :edit, :update, :destroy]

  # GET /mecanicos
  # GET /mecanicos.json
  def index
    @mecanicos = Mecanico.all
  end

  # GET /mecanicos/1
  # GET /mecanicos/1.json
  def show
  end

  # GET /mecanicos/new
  def new
    @mecanico = Mecanico.new
  end

  # GET /mecanicos/1/edit
  def edit
  end

  # POST /mecanicos
  # POST /mecanicos.json
  def create
    @mecanico = Mecanico.new(mecanico_params)

    respond_to do |format|
      if @mecanico.save
        format.html { redirect_to @mecanico, notice: 'Mecanico was successfully created.' }
        format.json { render :show, status: :created, location: @mecanico }
      else
        format.html { render :new }
        format.json { render json: @mecanico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mecanicos/1
  # PATCH/PUT /mecanicos/1.json
  def update
    respond_to do |format|
      if @mecanico.update(mecanico_params)
        format.html { redirect_to @mecanico, notice: 'Mecanico was successfully updated.' }
        format.json { render :show, status: :ok, location: @mecanico }
      else
        format.html { render :edit }
        format.json { render json: @mecanico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mecanicos/1
  # DELETE /mecanicos/1.json
  def destroy
    @mecanico.destroy
    respond_to do |format|
      format.html { redirect_to mecanicos_url, notice: 'Mecanico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mecanico
      @mecanico = Mecanico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mecanico_params
      params.require(:mecanico).permit(:asesor_id, :NombreMecanico, :ApellidoMecanico, :NumeroTelefono)
    end
end
