class PatentesController < ApplicationController
  before_action :set_patente, only: [:show, :edit, :update, :destroy]

  # GET /patentes
  # GET /patentes.json
  def index
    @patentes = Patente.all
  end

  # GET /patentes/1
  # GET /patentes/1.json
  def show
  end

  # GET /patentes/new
  def new
    @patente = Patente.new
  end

  # GET /patentes/1/edit
  def edit
  end

  # POST /patentes
  # POST /patentes.json
  def create
    @patente = Patente.new(patente_params)

    respond_to do |format|
      if @patente.save
        format.html { redirect_to @patente, notice: 'Patente was successfully created.' }
        format.json { render :show, status: :created, location: @patente }
      else
        format.html { render :new }
        format.json { render json: @patente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patentes/1
  # PATCH/PUT /patentes/1.json
  def update
    respond_to do |format|
      if @patente.update(patente_params)
        format.html { redirect_to @patente, notice: 'Patente was successfully updated.' }
        format.json { render :show, status: :ok, location: @patente }
      else
        format.html { render :edit }
        format.json { render json: @patente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patentes/1
  # DELETE /patentes/1.json
  def destroy
    @patente.destroy
    respond_to do |format|
      format.html { redirect_to patentes_url, notice: 'Patente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patente
      @patente = Patente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patente_params
      params.require(:patente).permit(:nome)
    end
end
