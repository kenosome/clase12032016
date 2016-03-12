class ComputadorsController < ApplicationController
  before_action :set_computador, only: [:show, :edit, :update, :destroy]

  # GET /computadors
  # GET /computadors.json
  def index
    @computadors = Computador.all
  end

  # GET /computadors/1
  # GET /computadors/1.json
  def show
  end

  # GET /computadors/new
  def new
    @computador = Computador.new
  end

  # GET /computadors/1/edit
  def edit
  end

  # POST /computadors
  # POST /computadors.json
  def create
    @computador = Computador.new(computador_params)

    respond_to do |format|
      if @computador.save
        format.html { redirect_to @computador, notice: 'Computador was successfully created.' }
        format.json { render :show, status: :created, location: @computador }
      else
        format.html { render :new }
        format.json { render json: @computador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computadors/1
  # PATCH/PUT /computadors/1.json
  def update
    respond_to do |format|
      if @computador.update(computador_params)
        format.html { redirect_to @computador, notice: 'Computador was successfully updated.' }
        format.json { render :show, status: :ok, location: @computador }
      else
        format.html { render :edit }
        format.json { render json: @computador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computadors/1
  # DELETE /computadors/1.json
  def destroy
    @computador.destroy
    respond_to do |format|
      format.html { redirect_to computadors_url, notice: 'Computador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computador
      @computador = Computador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computador_params
      params.require(:computador).permit(:cpu, :memoria, :disco, :disco_mag)
    end
end
