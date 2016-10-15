class SoldadosController < ApplicationController
  before_action :set_soldado, only: [:show, :edit, :update, :destroy]
  before_action :set_patentes, only: [:new,:edit]

  # GET /soldados
  # GET /soldados.json
  def index
    @soldados = Soldado.all
  end

  # GET /soldados/1
  # GET /soldados/1.json
  def show
  end

  # GET /soldados/new
  def new
    @soldado = Soldado.new
  end

  # GET /soldados/1/edit
  def edit
  end

  # POST /soldados
  # POST /soldados.json
  def create
    @soldado = Soldado.new(soldado_params)

    respond_to do |format|
      if @soldado.save
        format.html { redirect_to @soldado, notice: 'Soldado was successfully created.' }
        format.json { render :show, status: :created, location: @soldado }
      else
        format.html { render :new }
        format.json { render json: @soldado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soldados/1
  # PATCH/PUT /soldados/1.json
  def update
    respond_to do |format|
      if @soldado.update(soldado_params)
        format.html { redirect_to @soldado, notice: 'Soldado was successfully updated.' }
        format.json { render :show, status: :ok, location: @soldado }
      else
        format.html { render :edit }
        format.json { render json: @soldado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soldados/1
  # DELETE /soldados/1.json
  def destroy
    @soldado.destroy
    respond_to do |format|
      format.html { redirect_to soldados_url, notice: 'Soldado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soldado
      @soldado = Soldado.find(params[:id])
    end

    def set_patentes
      @patentes = Patente.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soldado_params
      params.require(:soldado).permit(:nome, :patente_id)
    end
end
