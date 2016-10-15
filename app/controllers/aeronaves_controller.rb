class AeronavesController < ApplicationController
  before_action :set_aeronave, only: [:show, :edit, :update, :destroy]

  # GET /aeronaves
  # GET /aeronaves.json
  def index
    @aeronaves = Aeronave.all
  end

  # GET /aeronaves/1
  # GET /aeronaves/1.json
  def show
  end

  # GET /aeronaves/new
  def new
    @aeronave = Aeronave.new
  end

  # GET /aeronaves/1/edit
  def edit
  end

  # POST /aeronaves
  # POST /aeronaves.json
  def create
    @aeronave = Aeronave.new(aeronave_params)

    respond_to do |format|
      if @aeronave.save
        format.html { redirect_to @aeronave, notice: 'Aeronave was successfully created.' }
        format.json { render :show, status: :created, location: @aeronave }
      else
        format.html { render :new }
        format.json { render json: @aeronave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeronaves/1
  # PATCH/PUT /aeronaves/1.json
  def update
    respond_to do |format|
      if @aeronave.update(aeronave_params)
        format.html { redirect_to @aeronave, notice: 'Aeronave was successfully updated.' }
        format.json { render :show, status: :ok, location: @aeronave }
      else
        format.html { render :edit }
        format.json { render json: @aeronave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeronaves/1
  # DELETE /aeronaves/1.json
  def destroy
    @aeronave.destroy
    respond_to do |format|
      format.html { redirect_to aeronaves_url, notice: 'Aeronave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeronave
      @aeronave = Aeronave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aeronave_params
      params.require(:aeronave).permit(:modelo, :uuid)
    end
end
