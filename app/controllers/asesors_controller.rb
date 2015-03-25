class AsesorsController < ApplicationController
  before_action :set_asesor, only: [:show, :edit, :update, :destroy]

  # GET /asesors
  # GET /asesors.json
  def index
    @asesors = Asesor.all
  end

  # GET /asesors/1
  # GET /asesors/1.json
  def show
  end

  # GET /asesors/new
  def new
    @asesor = Asesor.new
  end

  # GET /asesors/1/edit
  def edit
  end

  # POST /asesors
  # POST /asesors.json
  def create
    @asesor = Asesor.new(asesor_params)

    respond_to do |format|
      if @asesor.save
        format.html { redirect_to @asesor, notice: 'Asesor was successfully created.' }
        format.json { render :show, status: :created, location: @asesor }
      else
        format.html { render :new }
        format.json { render json: @asesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asesors/1
  # PATCH/PUT /asesors/1.json
  def update
    respond_to do |format|
      if @asesor.update(asesor_params)
        format.html { redirect_to @asesor, notice: 'Asesor was successfully updated.' }
        format.json { render :show, status: :ok, location: @asesor }
      else
        format.html { render :edit }
        format.json { render json: @asesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asesors/1
  # DELETE /asesors/1.json
  def destroy
    @asesor.destroy
    respond_to do |format|
      format.html { redirect_to asesors_url, notice: 'Asesor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asesor
      @asesor = Asesor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asesor_params
      params.require(:asesor).permit(:NombreAsesor, :ApellidoAsesor, :NumeroTelefono)
    end
end
